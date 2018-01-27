#include "crypto.h"

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
    for(i=0; i< CRYPTO_IN_SIZE_BIT; i++){
        state_bs[i] = 0x0;
    }
    for (i = 0; i < BITSLICE_WIDTH; i++){           // 16 blocks
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
    uint8_t k;
    // Clear the pt buffer
    for(i=0; i< CRYPTO_IN_SIZE * BITSLICE_WIDTH; i++){
        pt[i] = 0x0;
    }

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
void add_round_key(bs_reg_t state[CRYPTO_IN_SIZE_BIT],
        const uint8_t key[CRYPTO_KEY_SIZE])
{
    uint8_t i;
    uint8_t tmpkey[CRYPTO_KEY_SIZE];
    uint16_t *p1 = (uint16_t*)tmpkey;
    uint16_t *p2 = (uint16_t*)key;
    // Copy key to a temp variable
    for (i=0; i<5; i++){
        p1[i] = p2[i];
    }
    //((uint64_t*) tmpkey)[0] = ((uint64_t*) key)[0];
    //((uint16_t*) tmpkey)[4] = ((uint16_t*) key)[4];


    for(i=0; i< CRYPTO_IN_SIZE_BIT; i++){
        // bitwise index in uint8
        uint8_t biti = i/8;
        // Get the ith bit of key
        uint16_t bit = tmpkey[biti] & 0x1;

        // Fill all bits in uint16 bit variable
        if(bit == 0x01){
            bit = 0xffff;
        }

        tmpkey[biti] = tmpkey[biti] >> 1;
        // Add round key to the ith bit of all 16 blocks
        state[i] = state[i] ^ bit;
    }

}
void spbox_layer(bs_reg_t state[CRYPTO_IN_SIZE_BIT]){
    uint8_t i;
    bs_reg_t x[4];   // For storing bits before sbox per 4 bits
    //bs_reg_t t[4];
    bs_reg_t bb[CRYPTO_IN_SIZE_BIT];
    // Do sbox per 4 bits
    for(i=0; i< CRYPTO_IN_SIZE_BIT/4; i++){
        //bs_reg_t* x = state+4*i;
        ((uint64_t*)x)[0] = ((uint64_t*)(state+4*i))[0];
        /*
           t[0] = x[2] ^ x[1];
           t[1] = x[1] & t[0];
           t[2] = x[0] ^ t[1];
           state[4*i + 3] = x[3] ^ t[2];
           t[1] = t[0] & t[2];

           t[0] ^= state[4*i +3];
           t[1] ^= x[1];
           t[3] = x[3] | t[1];
           state[4*i + 2] = t[0] ^ t[3];
           x[3] = ~x[3];

           t[1] ^= x[3];
           state[4*i] = state[4*i + 2] ^ t[1];
           t[1] |= t[0];
           state[4*i + 1] = t[2] ^ t[1];
           */

        // i is the count of every 4 bits
        //https://link.springer.com/content/pdf/10.1007%2F978-3-642-33027-8.pdf

        /*
        uint16_t r0=x[0];
        uint16_t r1=x[1];
        uint16_t r2=x[2];
        uint16_t r3=x[3];
        uint16_t tmp;



        r2 = r2^r1;
        r3 = r3^r1;

        tmp = r2;
        r2 = r2 & r3;

        r1 = r1 ^ r2;
        tmp = tmp ^ r0;

        r2 = r1;
        r1 = r1 & tmp;

        r1 = r1^r3;
        tmp= tmp^r0;

        tmp = tmp|r2;
        r2 = r2^r0;

        r2 = r2^r1;
        tmp= tmp^r3;

        r2 = ~r2;
        r0 = r0^tmp;

        r3 = r2;
        r2 = r2&r1;

        r2 = r2|tmp;
        r2 = ~r2;


        bb[i] = r0;
        bb[i+16] = r1;
        bb[i + 2*16] = r2;
        bb[i + 3*16] = r3;
        */
        
           bb[i] = x[0] ^ x[1] & x[2] ^ x[2] ^ x[3];
           bb[i+16] = x[0] & x[2] & x[1] ^ x[0] & x[3] & x[1] ^ x[3] & x[1] ^ x[1] ^ x[0] & x[2] & x[3] ^ x[2] & x[3] ^ x[3];
           bb[i + 2*16] = ~(x[0] & x[1] ^ x[0] & x[3] & x[1] ^ x[3] & x[1] ^ x[2] ^ x[0] & x[3] ^ x[0] & x[2] & x[3] ^ x[3]);
           bb[i + 3*16] = ~(x[1] & x[2] & x[0] ^ x[1] & x[3] & x[0] ^ x[2] & x[3] & x[0] ^ x[0] ^ x[1] ^ x[1] & x[2] ^ x[3]);
           
    }
    for(i=0; i< CRYPTO_IN_SIZE_BIT; i++){
        state[i] = bb[i];
    }

}
void crypto_func(uint8_t pt[CRYPTO_IN_SIZE * BITSLICE_WIDTH], uint8_t key[CRYPTO_KEY_SIZE])
{
    // State buffer and additional backbuffer of same size (you can remove the backbuffer if you do not need it)
    bs_reg_t state[CRYPTO_IN_SIZE_BIT];
    //bs_reg_t bb[CRYPTO_IN_SIZE_BIT];

    // Bring into bitslicing form
    enslice(pt, state);

    /// INSERT YOUR CODE HERE ///
    uint8_t i;
    for(i = 1; i <= 31; i++)
    {
        // Note +2 offset on key since output of keyschedule are upper 8 byte

        add_round_key(state, key + 2);
        spbox_layer(state);
        update_round_key(key, i);
    }

    // Note +2 offset on key since output of keyschedule are upper 8 byte
    add_round_key(state, key + 2);

    // Convert back to normal form
    unslice(state, pt);
}
