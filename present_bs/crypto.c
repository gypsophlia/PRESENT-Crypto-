#include "crypto.h"
uint64_t boxKS[16] = {
0x0000000000000000, 0x000000000000ffff, 0x00000000ffff0000, 0x00000000ffffffff, 
0x0000ffff00000000, 0x0000ffff0000ffff, 0x0000ffffffff0000, 0x0000ffffffffffff, 
0xffff000000000000, 0xffff00000000ffff, 0xffff0000ffff0000, 0xffff0000ffffffff, 
0xffffffff00000000, 0xffffffff0000ffff, 0xffffffffffff0000, 0xffffffffffffffff
};

/**
 * Bring normal buffer into bitsliced form
 * @param pt Input: state_bs in normal form
 * @param state_bs Output: Bitsliced state
 */
static void enslice(uint8_t pt[CRYPTO_IN_SIZE * BITSLICE_WIDTH], bs_reg_t state_bs[CRYPTO_IN_SIZE_BIT])
{
    /// INSERT YOUR CODE HERE ///
    uint8_t i;
    uint8_t j;
    // Clear the output buffer
    //for(i=0; i< CRYPTO_IN_SIZE_BIT; i++){
    //    state_bs[i] = 0x0;
    //}
    for (i = 0; i < BITSLICE_WIDTH; i++){           // 16 blocks
        // multipler is very fast, no need to replace with lut
        uint8_t blockStart = i*CRYPTO_IN_SIZE;      // The index of start of each block
        for(j=0; j< CRYPTO_IN_SIZE_BIT ; j++){      // 64 bits each block
            // Get j%8 bit in element j/8 of each block
            // Then "Push" it to the bs array
            uint8_t biti = j/8;

            // shl one bit to give space to the incomming bit
            state_bs[j] = state_bs[j]<<1;
            // Get the last bit of the shifited plaintext
            state_bs[j] |= pt[blockStart + biti] & 0x01;
            // shr plaintext in every loop to get better performance
            pt[blockStart +biti] = pt[blockStart + biti] >> 1;
        }
    }

}

/**
 * Bring bitsliced buffer into normal form
 * @param state_bs Input: Bitsliced state
 * @param pt Output: state_bs in normal form
 */
static void unslice(bs_reg_t state_bs[CRYPTO_IN_SIZE_BIT], uint8_t pt[CRYPTO_IN_SIZE * BITSLICE_WIDTH])
{
    /// INSERT YOUR CODE HERE ///
    uint8_t i;
    uint8_t j;
    // Clear the pt buffer
    //for(i=0; i< CRYPTO_IN_SIZE * BITSLICE_WIDTH; i++){
    //    pt[i] = 0x0;
    //}

    for(i=0; i < BITSLICE_WIDTH; i++){
        uint8_t blockStart = i*CRYPTO_IN_SIZE; 

        for(j =0; j< CRYPTO_IN_SIZE_BIT; j++){
            uint8_t biti = j/8;         // byte wise index
            // Give space for incomming bit
            pt[blockStart + biti] = pt[blockStart+biti] >>1;
            // get the MSB of each slice and shift it left
            uint8_t *p = (uint8_t*)(state_bs + j);
            // Put MSB of slice to MSB of each 8bit plaintext element
            pt[blockStart + biti] |= p[1] & 0x80;
            // Shift 16bit slice left discard MSB
            state_bs[j] = state_bs[j] << 1;

        }
    }
}

/**
 * Perform next key schedule step
 * @param key Key register to be updated
 * @param r Round counter
 * @warning For correct function, has to be called with incremented r each time
 * @note You are free to change or optimize this function
 */
static void update_round_key(uint8_t key[CRYPTO_KEY_SIZE], const uint8_t r)
{
    const uint8_t sbox[16] = {
        0xC, 0x5, 0x6, 0xB, 0x9, 0x0, 0xA, 0xD, 0x3, 0xE, 0xF, 0x8, 0x4, 0x7, 0x1, 0x2,
    };

    uint8_t tmp = 0;
    const uint8_t tmp2 = key[2];
    const uint8_t tmp1 = key[1];
    const uint8_t tmp0 = key[0];

    // rotate right by 19 bit
    key[0] = key[2] >> 3 | key[3] << 5;
    key[1] = key[3] >> 3 | key[4] << 5;
    key[2] = key[4] >> 3 | key[5] << 5;
    key[3] = key[5] >> 3 | key[6] << 5;
    key[4] = key[6] >> 3 | key[7] << 5;
    key[5] = key[7] >> 3 | key[8] << 5;
    key[6] = key[8] >> 3 | key[9] << 5;
    key[7] = key[9] >> 3 | tmp0 << 5;
    key[8] = tmp0 >> 3   | tmp1 << 5;
    key[9] = tmp1 >> 3   | tmp2 << 5;

    // perform sbox lookup on MSbits
    tmp = sbox[key[9] >> 4];
    key[9] &= 0x0F;
    key[9] |= tmp << 4;

    // XOR round counter k19 ... k15
    key[1] ^= r << 7;
    key[2] ^= r >> 1;
}
bs_reg_t* add_round_key_spbox(bs_reg_t state[CRYPTO_IN_SIZE_BIT], bs_reg_t bb[CRYPTO_IN_SIZE_BIT], const uint8_t key[CRYPTO_KEY_SIZE])
{
    uint8_t i;
    bs_reg_t x[4];   // For storing bits before sbox per 4 bits

    for(i=0; i< CRYPTO_IN_SIZE_BIT/8; i++){
        // bitwise index in uint8
        // Get the lower 4 bits of current byte of key
        uint16_t bit4 = key[i] & 0x0f;
        uint64_t slicedKey_4bits = boxKS[bit4];

        uint64_t *p = ((uint64_t*)state)+i*2;
        *p = *p ^ slicedKey_4bits;

        bit4 = (key[i]>>4) & 0x0f;
        slicedKey_4bits = boxKS[bit4];
        p = ((uint64_t*)state)+i*2+1;
        *p = *p ^ slicedKey_4bits;

    }

    for(i=0; i< CRYPTO_IN_SIZE_BIT/4; i++){
        //---------------SPBOX--------------
        //bs_reg_t* x = state+4*i;
        //x = (bb+4*i); 
        ((uint64_t*)x)[0] = ((uint64_t*)state)[i];

        // i is the count of every 4 bits
        // Implementing_Lightweight_Block_Ciphers_on_x86_Architectures
        

        uint16_t tmp;

        x[2] = x[2]^x[1];
        x[3] = x[3]^x[1];
        tmp = x[2];
        x[2] = x[2] & x[3];

        x[1] = x[1] ^ x[2];
        tmp = tmp ^ x[0];
        x[2] = x[1];
        x[1] = x[1] & tmp;

        x[1] = x[1]^x[3];
        tmp= tmp^x[0];
        tmp = tmp|x[2];
        x[2] = x[2]^x[0];

        x[2] = x[2]^x[1];
        tmp= tmp^x[3];
        x[2] = ~x[2];
        x[0] = x[0]^tmp;

        x[3] = x[2];
        x[2] = x[2]&x[1];
        x[2] = x[2]^tmp;
        x[2] = ~x[2];

        
        bb[i] = x[0];
        bb[i+16] = x[1];
        bb[i + 2*16] = x[2];
        bb[i + 3*16] = x[3];


    }
    return bb;


}
void add_round_key(bs_reg_t state[CRYPTO_IN_SIZE_BIT],
        const uint8_t key[CRYPTO_KEY_SIZE])
{
    uint8_t i;
    for(i=0; i< CRYPTO_IN_SIZE_BIT/8; i++){
        // bitwise index in uint8
        // Get the lower 4 bits of current byte of key
        uint16_t bit4 = key[i] & 0x0f;
        uint64_t slicedKey_4bits = boxKS[bit4];

        uint64_t *p = ((uint64_t*)state)+i*2;
        *p = *p ^ slicedKey_4bits;

        bit4 = (key[i]>>4) & 0x0f;
        slicedKey_4bits = boxKS[bit4];
        p = ((uint64_t*)state)+i*2+1;
        *p = *p ^ slicedKey_4bits;

    }

}
void crypto_func(uint8_t pt[CRYPTO_IN_SIZE * BITSLICE_WIDTH], uint8_t key[CRYPTO_KEY_SIZE])
{
    // State buffer and additional backbuffer of same size (you can remove the backbuffer if you do not need it)
    bs_reg_t state[CRYPTO_IN_SIZE_BIT];
    bs_reg_t bb[CRYPTO_IN_SIZE_BIT];
    bs_reg_t *p1 = state;
    bs_reg_t *p2 = bb;
    bs_reg_t *ptmp = state;

    // Bring into bitslicing form
    enslice(pt, state);

    /// INSERT YOUR CODE HERE ///
    uint8_t i;
    for(i = 1; i <= 31; i++)
    {
        // Note +2 offset on key since output of keyschedule are upper 8 byte
        

        ptmp = add_round_key_spbox(p1,p2, key + 2);
        if(ptmp == bb){
            p2 = state;
            p1 = bb;

        }else if(ptmp == state){
            p1 = state;
            p2 = bb;
        }
        //spbox_layer(state);
        update_round_key(key, i);
    }

    // Note +2 offset on key since output of keyschedule are upper 8 byte
    add_round_key(ptmp, key + 2);

    // Convert back to normal form
    unslice(ptmp, pt);
}
