#include "crypto.h"

static void add_round_key(uint8_t pt[CRYPTO_IN_SIZE], uint8_t key[CRYPTO_KEY_SIZE])
{
	/// INSERT YOUR CODE HERE ///
    uint8_t i;
    for (i=0; i < CRYPTO_IN_SIZE; i++){
       pt[i] = pt[i] ^ key [i];
    }
}

static const uint8_t sbox[16] = {
	0xC, 0x5, 0x6, 0xB, 0x9, 0x0, 0xA, 0xD, 0x3, 0xE, 0xF, 0x8, 0x4, 0x7, 0x1, 0x2,
};

static void sbox_layer(uint8_t s[CRYPTO_IN_SIZE])
{
	/// INSERT YOUR CODE HERE ///
    uint8_t i;
    for (i = 0; i < CRYPTO_IN_SIZE; i++){
        // Get upper and lower 4bits form uint8
        uint8_t upper_4bits = s[i] >> 4;
        uint8_t lower_4bits = s[i] & 0x0f;

        // Apply Sbox to lower and higher 4bits
        s[i] = (sbox[upper_4bits] << 4) | (sbox[lower_4bits]);
    }
}

uint8_t getbit(uint8_t a,uint8_t bit){
    return (a>>bit) & 0x01;
}

uint8_t setbit(uint8_t a, uint8_t bit){
    return (a | ( 1<< bit ));
}

uint8_t clrbit(uint8_t a, uint8_t bit){
    return (a & (~(1<<bit)));
}

void cpybit(uint8_t *out, uint8_t pos, uint8_t v){
    *out &= ~(1 << pos); // clear bit at pos
    *out |= (v << pos); // set value
}

static void pbox_layer(uint8_t s[CRYPTO_IN_SIZE])
{
	/// INSERT YOUR CODE HERE ///
    uint8_t out[CRYPTO_IN_SIZE];
    uint8_t i;
    for (i=0; i<CRYPTO_IN_SIZE; i++){
        out[i] =0x00;
    }
    for (i=0; i<CRYPTO_IN_SIZE*8; i++){
        uint8_t src_byte = i>>3;
        uint8_t src_bit = i%8;

        uint8_t posi = (i/4) + (i % 4) * 16;

        uint8_t dst_byte = posi>>3;
        uint8_t dst_bit = posi%8;
        
        out[dst_byte] |= ((s[src_byte]>> src_bit) & 0x1) << dst_bit;
    }

    for (i=0; i<CRYPTO_IN_SIZE; i++){
        s[i] = out[i];
    }
}


static void update_round_key(uint8_t key[CRYPTO_KEY_SIZE], const uint8_t r)
{
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

void crypto_func(uint8_t pt[CRYPTO_IN_SIZE], uint8_t key[CRYPTO_KEY_SIZE])
{
	uint8_t i = 0;

	for(i = 1; i <= 31; i++)
	{
		// Note +2 offset on key since output of keyschedule are upper 8 byte
		add_round_key(pt, key + 2);
		sbox_layer(pt);
		pbox_layer(pt);
		update_round_key(key, i);
	}

	// Note +2 offset on key since output of keyschedule are upper 8 byte
	add_round_key(pt, key + 2);
}

