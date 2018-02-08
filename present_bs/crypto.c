#include "crypto.h"
uint64_t boxKS[16] = {
    0x0000000000000000, 0x000000000000ffff, 0x00000000ffff0000, 0x00000000ffffffff,
    0x0000ffff00000000, 0x0000ffff0000ffff, 0x0000ffffffff0000, 0x0000ffffffffffff,
    0xffff000000000000, 0xffff00000000ffff, 0xffff0000ffff0000, 0xffff0000ffffffff,
    0xffffffff00000000, 0xffffffff0000ffff, 0xffffffffffff0000, 0xffffffffffffffff
};
// Sbox for higher 4 bits of key[9] in update_round key
static const char sbox9[256] = {
    0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB, 0xCC, 0xCD, 0xCE, 0xCF,
    0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F,
    0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F,
    0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xBB, 0xBC, 0xBD, 0xBE, 0xBF,
    0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B, 0x9C, 0x9D, 0x9E, 0x9F,
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F,
    0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB, 0xAC, 0xAD, 0xAE, 0xAF,
    0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5, 0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xDB, 0xDC, 0xDD, 0xDE, 0xDF,
    0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F,
    0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xEB, 0xEC, 0xED, 0xEE, 0xEF,
    0xF0, 0xF1, 0xF2, 0xF3, 0xF4, 0xF5, 0xF6, 0xF7, 0xF8, 0xF9, 0xFA, 0xFB, 0xFC, 0xFD, 0xFE, 0xFF,
    0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x8C, 0x8D, 0x8E, 0x8F,
    0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F,
    0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F,
    0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F,
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F,
};

// Shift right by 1
static const uint8_t RS1box[256]={
    0b00000000,0b00000000,0b00000001,0b00000001,
    0b00000010,0b00000010,0b00000011,0b00000011,
    0b00000100,0b00000100,0b00000101,0b00000101,
    0b00000110,0b00000110,0b00000111,0b00000111,
    0b00001000,0b00001000,0b00001001,0b00001001,
    0b00001010,0b00001010,0b00001011,0b00001011,
    0b00001100,0b00001100,0b00001101,0b00001101,
    0b00001110,0b00001110,0b00001111,0b00001111,
    0b00010000,0b00010000,0b00010001,0b00010001,
    0b00010010,0b00010010,0b00010011,0b00010011,
    0b00010100,0b00010100,0b00010101,0b00010101,
    0b00010110,0b00010110,0b00010111,0b00010111,
    0b00011000,0b00011000,0b00011001,0b00011001,
    0b00011010,0b00011010,0b00011011,0b00011011,
    0b00011100,0b00011100,0b00011101,0b00011101,
    0b00011110,0b00011110,0b00011111,0b00011111,
    0b00100000,0b00100000,0b00100001,0b00100001,
    0b00100010,0b00100010,0b00100011,0b00100011,
    0b00100100,0b00100100,0b00100101,0b00100101,
    0b00100110,0b00100110,0b00100111,0b00100111,
    0b00101000,0b00101000,0b00101001,0b00101001,
    0b00101010,0b00101010,0b00101011,0b00101011,
    0b00101100,0b00101100,0b00101101,0b00101101,
    0b00101110,0b00101110,0b00101111,0b00101111,
    0b00110000,0b00110000,0b00110001,0b00110001,
    0b00110010,0b00110010,0b00110011,0b00110011,
    0b00110100,0b00110100,0b00110101,0b00110101,
    0b00110110,0b00110110,0b00110111,0b00110111,
    0b00111000,0b00111000,0b00111001,0b00111001,
    0b00111010,0b00111010,0b00111011,0b00111011,
    0b00111100,0b00111100,0b00111101,0b00111101,
    0b00111110,0b00111110,0b00111111,0b00111111,
    0b01000000,0b01000000,0b01000001,0b01000001,
    0b01000010,0b01000010,0b01000011,0b01000011,
    0b01000100,0b01000100,0b01000101,0b01000101,
    0b01000110,0b01000110,0b01000111,0b01000111,
    0b01001000,0b01001000,0b01001001,0b01001001,
    0b01001010,0b01001010,0b01001011,0b01001011,
    0b01001100,0b01001100,0b01001101,0b01001101,
    0b01001110,0b01001110,0b01001111,0b01001111,
    0b01010000,0b01010000,0b01010001,0b01010001,
    0b01010010,0b01010010,0b01010011,0b01010011,
    0b01010100,0b01010100,0b01010101,0b01010101,
    0b01010110,0b01010110,0b01010111,0b01010111,
    0b01011000,0b01011000,0b01011001,0b01011001,
    0b01011010,0b01011010,0b01011011,0b01011011,
    0b01011100,0b01011100,0b01011101,0b01011101,
    0b01011110,0b01011110,0b01011111,0b01011111,
    0b01100000,0b01100000,0b01100001,0b01100001,
    0b01100010,0b01100010,0b01100011,0b01100011,
    0b01100100,0b01100100,0b01100101,0b01100101,
    0b01100110,0b01100110,0b01100111,0b01100111,
    0b01101000,0b01101000,0b01101001,0b01101001,
    0b01101010,0b01101010,0b01101011,0b01101011,
    0b01101100,0b01101100,0b01101101,0b01101101,
    0b01101110,0b01101110,0b01101111,0b01101111,
    0b01110000,0b01110000,0b01110001,0b01110001,
    0b01110010,0b01110010,0b01110011,0b01110011,
    0b01110100,0b01110100,0b01110101,0b01110101,
    0b01110110,0b01110110,0b01110111,0b01110111,
    0b01111000,0b01111000,0b01111001,0b01111001,
    0b01111010,0b01111010,0b01111011,0b01111011,
    0b01111100,0b01111100,0b01111101,0b01111101,
    0b01111110,0b01111110,0b01111111,0b01111111
};

// Left shift 7
static const uint8_t LS7box[256]={
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000,
    0b00000000,0b10000000,0b00000000,0b10000000
};
// LUT for mapping last 3 bits to first 3 bits
// ( res = input << 13)
static const uint16_t LS13box[8]={
    0b0000000000000000,
    0b0010000000000000,
    0b0100000000000000,
    0b0110000000000000,
    0b1000000000000000,
    0b1010000000000000,
    0b1100000000000000,
    0b1110000000000000
};

// LUT for shifting right by 3 bits (used in update_round_key)
static const uint8_t ksboxR3[256] = {
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,
    0x02,0x02,0x02,0x02,0x02,0x02,0x02,0x02,
    0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,
    0x04,0x04,0x04,0x04,0x04,0x04,0x04,0x04,
    0x05,0x05,0x05,0x05,0x05,0x05,0x05,0x05,
    0x06,0x06,0x06,0x06,0x06,0x06,0x06,0x06,
    0x07,0x07,0x07,0x07,0x07,0x07,0x07,0x07,
    0x08,0x08,0x08,0x08,0x08,0x08,0x08,0x08,
    0x09,0x09,0x09,0x09,0x09,0x09,0x09,0x09,
    0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,0x0a,
    0x0b,0x0b,0x0b,0x0b,0x0b,0x0b,0x0b,0x0b,
    0x0c,0x0c,0x0c,0x0c,0x0c,0x0c,0x0c,0x0c,
    0x0d,0x0d,0x0d,0x0d,0x0d,0x0d,0x0d,0x0d,
    0x0e,0x0e,0x0e,0x0e,0x0e,0x0e,0x0e,0x0e,
    0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,0x0f,
    0x10,0x10,0x10,0x10,0x10,0x10,0x10,0x10,
    0x11,0x11,0x11,0x11,0x11,0x11,0x11,0x11,
    0x12,0x12,0x12,0x12,0x12,0x12,0x12,0x12,
    0x13,0x13,0x13,0x13,0x13,0x13,0x13,0x13,
    0x14,0x14,0x14,0x14,0x14,0x14,0x14,0x14,
    0x15,0x15,0x15,0x15,0x15,0x15,0x15,0x15,
    0x16,0x16,0x16,0x16,0x16,0x16,0x16,0x16,
    0x17,0x17,0x17,0x17,0x17,0x17,0x17,0x17,
    0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,
    0x19,0x19,0x19,0x19,0x19,0x19,0x19,0x19,
    0x1a,0x1a,0x1a,0x1a,0x1a,0x1a,0x1a,0x1a,
    0x1b,0x1b,0x1b,0x1b,0x1b,0x1b,0x1b,0x1b,
    0x1c,0x1c,0x1c,0x1c,0x1c,0x1c,0x1c,0x1c,
    0x1d,0x1d,0x1d,0x1d,0x1d,0x1d,0x1d,0x1d,
    0x1e,0x1e,0x1e,0x1e,0x1e,0x1e,0x1e,0x1e,
    0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f,0x1f
};

// LUT for shifting left by 5 bits (used in update_round_key)
static const uint8_t ksboxL5[256] = {
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0,
    0x00,0x20,0x40,0x60,0x80,0xA0,0xC0,0xE0
};
static const uint8_t sbox[16] = {
    0xC, 0x5, 0x6, 0xB, 0x9, 0x0, 0xA, 0xD, 0x3, 0xE, 0xF, 0x8, 0x4, 0x7, 0x1, 0x2,
};
// For speed move some local var to global
static uint8_t blockStart,j;
/**
 * Bring normal buffer into bitsliced form
 * @param pt Input: state_bs in normal form
 * @param state_bs Output: Bitsliced state
 */
static void enslice(uint8_t pt[CRYPTO_IN_SIZE * BITSLICE_WIDTH], bs_reg_t state_bs[CRYPTO_IN_SIZE_BIT])
{
    /// INSERT YOUR CODE HERE ///
    uint8_t i;
    for (i = 0; i < BITSLICE_WIDTH; i++){           // 16 blocks
        // multipler is very fast, no need to replace with lut
        blockStart = i*CRYPTO_IN_SIZE;      // The index of start of each block
        for(j=0; j< CRYPTO_IN_SIZE_BIT ; j++){      // 64 bits each block
            // Get the j%8 bit in element j/8 of each block
            // Then "Push" it to the bs array

            // Stays within the byte for each 8 bits
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
    // Clear the pt buffer
    for(i=0; i < BITSLICE_WIDTH; i++){
        blockStart = i*CRYPTO_IN_SIZE;

        for(j =0; j< CRYPTO_IN_SIZE_BIT; j++){
            // Stays within the byte for each 8 bits
            uint8_t biti = j/8;
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
    uint16_t *y=(uint16_t*)key;
    const uint16_t tmp1 = y[1];
    const uint16_t tmp0 = y[0];


    // rotate right by 19 bit
    // p16Key is uint16 pointer to the key
    // LS13box shift left by 13
    y[0] = y[1]>>3 | LS13box[y[2]&0x7];
    y[1] = y[2]>>3 | LS13box[y[3]&0x7];
    y[2] = y[3]>>3 | LS13box[y[4]&0x7];
    y[3] = y[4]>>3 | LS13box[tmp0&0x7];
    y[4] = tmp0>>3 | LS13box[tmp1&0x7];

    // perform sbox lookup on MSbits of key[9]
    key[9] =sbox9[key[9]];

    // XOR round counter k19 ... k15
   	// Sift left by 7
    key[1] ^= LS7box[r];
    // Sift right by 1
    key[2] ^= RS1box[r];
}

bs_reg_t* add_round_key_spbox(bs_reg_t state[CRYPTO_IN_SIZE_BIT], bs_reg_t bb[CRYPTO_IN_SIZE_BIT], const uint8_t key[CRYPTO_KEY_SIZE])
{
    uint8_t i;
    bs_reg_t x[4];   // For storing bits before sbox per 4 bits

    // Add round key
    for(i=0; i< CRYPTO_IN_SIZE_BIT/8; i++){
        // bitwise index in uint8
        // Get the lower 4 bits of current byte of key
        uint16_t bit4 = key[i] & 0x0f;
        // Slice key usng LUT
        uint64_t slicedKey_4bits = boxKS[ key[i] & 0x0f];
        // XOR Lower 4bits of Key with state
        uint64_t *p = ((uint64_t*)state)+i*2;
        *p = *p ^ slicedKey_4bits;


        // Higher 4bits of current byte of key
        bit4 = key[i]>>4;
        // Slice key usng LUT
        slicedKey_4bits = boxKS[bit4];
        // XOR Higher 4bits of Key with state
        p = ((uint64_t*)state)+i*2+1;
        *p = *p ^ slicedKey_4bits;

    }

    for(i=0; i< CRYPTO_IN_SIZE_BIT/4; i++){
        // i is the count of every 4 bits
        //---------------SPBOX--------------
        // Copy to local variable is faster
        ((uint64_t*)x)[0] = ((uint64_t*)state)[i];

        // Ref: Implementing_Lightweight_Block_Ciphers_on_x86_Architectures
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
    // Add round key
    for(i=0; i< CRYPTO_IN_SIZE_BIT/8; i++){
        // bitwise index in uint8
        // Get the lower 4 bits of current byte of key
        uint16_t bit4 = key[i] & 0x0f;
        // Slice key usng LUT
        uint64_t slicedKey_4bits = boxKS[key[i] & 0x0f];
        // XOR Lower 4bits of Key with state
        uint64_t *p = ((uint64_t*)state)+i*2;
        *p = *p ^ slicedKey_4bits;


        // Higher 4bits of current byte of key
        bit4 = key[i]>>4;
        // Slice key usng LUT
        slicedKey_4bits = boxKS[bit4];
        // XOR Higher 4bits of Key with state
        p = ((uint64_t*)state)+i*2+1;
        *p = *p ^ slicedKey_4bits;

    }
}
void crypto_func(uint8_t pt[CRYPTO_IN_SIZE * BITSLICE_WIDTH], uint8_t key[CRYPTO_KEY_SIZE])
{
    // State buffer and additional backbuffer of same size (you can remove the backbuffer if you do not need it)
    bs_reg_t state[CRYPTO_IN_SIZE_BIT];
    bs_reg_t bb[CRYPTO_IN_SIZE_BIT];
    bs_reg_t *pcontent = bb;
    bs_reg_t *pbb = state;
    bs_reg_t *ptmp;

    // Bring into bitslicing form
    enslice(pt, state);

    /// INSERT YOUR CODE HERE ///
    uint8_t i;
    for(i = 1; i <= 31; i++)
    {
        // Note +2 offset on key since output of keyschedule are upper 8 byte
        ptmp = pcontent;
        pcontent = pbb;
        pbb = ptmp;
        // Reduce data copy by switch between buffers
        //if(ptmp == bb){
        add_round_key_spbox(pcontent, pbb, key + 2);
        //}else{
        //ptmp = add_round_key_spbox(state,bb, key + 2);
        //}

        //ptmp = ....
        //state
        // Use swap XOR trick to swap pointers

        /*ptmp = ptmp1 ^ ptmp;
          ptmp1 = ptmp ^ ptmp1;
          ptmp = ptmp1 ^ptmp;*/
        update_round_key(key, i);
    }

    // Note +2 offset on key since output of keyschedule are upper 8 byte
    add_round_key(pbb, key + 2);

    // Convert back to normal form
    unslice(pbb, pt);
}
