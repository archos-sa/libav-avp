/*
 * This file is part of Libav.
 *
 * Libav is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * Libav is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with Libav; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

#include <stdint.h>

/* a*inverse[b]>>32 == a/b for all 0<=a<=16909558 && 2<=b<=256
 * for a>16909558, is an overestimate by less than 1 part in 1<<24 */
const uint32_t ff_inverse[257]={
         0, 4294967295U,2147483648U,1431655766, 1073741824,  858993460,  715827883,  613566757,
 536870912,  477218589,  429496730,  390451573,  357913942,  330382100,  306783379,  286331154,
 268435456,  252645136,  238609295,  226050911,  214748365,  204522253,  195225787,  186737709,
 178956971,  171798692,  165191050,  159072863,  153391690,  148102321,  143165577,  138547333,
 134217728,  130150525,  126322568,  122713352,  119304648,  116080198,  113025456,  110127367,
 107374183,  104755300,  102261127,   99882961,   97612894,   95443718,   93368855,   91382283,
  89478486,   87652394,   85899346,   84215046,   82595525,   81037119,   79536432,   78090315,
  76695845,   75350304,   74051161,   72796056,   71582789,   70409300,   69273667,   68174085,
  67108864,   66076420,   65075263,   64103990,   63161284,   62245903,   61356676,   60492498,
  59652324,   58835169,   58040099,   57266231,   56512728,   55778797,   55063684,   54366675,
  53687092,   53024288,   52377650,   51746594,   51130564,   50529028,   49941481,   49367441,
  48806447,   48258060,   47721859,   47197443,   46684428,   46182445,   45691142,   45210183,
  44739243,   44278014,   43826197,   43383509,   42949673,   42524429,   42107523,   41698712,
  41297763,   40904451,   40518560,   40139882,   39768216,   39403370,   39045158,   38693400,
  38347923,   38008561,   37675152,   37347542,   37025581,   36709123,   36398028,   36092163,
  35791395,   35495598,   35204650,   34918434,   34636834,   34359739,   34087043,   33818641,
  33554432,   33294321,   33038210,   32786010,   32537632,   32292988,   32051995,   31814573,
  31580642,   31350127,   31122952,   30899046,   30678338,   30460761,   30246249,   30034737,
  29826162,   29620465,   29417585,   29217465,   29020050,   28825284,   28633116,   28443493,
  28256364,   28071682,   27889399,   27709467,   27531842,   27356480,   27183338,   27012373,
  26843546,   26676816,   26512144,   26349493,   26188825,   26030105,   25873297,   25718368,
  25565282,   25414008,   25264514,   25116768,   24970741,   24826401,   24683721,   24542671,
  24403224,   24265352,   24129030,   23994231,   23860930,   23729102,   23598722,   23469767,
  23342214,   23216040,   23091223,   22967740,   22845571,   22724695,   22605092,   22486740,
  22369622,   22253717,   22139007,   22025474,   21913099,   21801865,   21691755,   21582751,
  21474837,   21367997,   21262215,   21157475,   21053762,   20951060,   20849356,   20748635,
  20648882,   20550083,   20452226,   20355296,   20259280,   20164166,   20069941,   19976593,
  19884108,   19792477,   19701685,   19611723,   19522579,   19434242,   19346700,   19259944,
  19173962,   19088744,   19004281,   18920561,   18837576,   18755316,   18673771,   18592933,
  18512791,   18433337,   18354562,   18276457,   18199014,   18122225,   18046082,   17970575,
  17895698,   17821442,   17747799,   17674763,   17602325,   17530479,   17459217,   17388532,
  17318417,   17248865,   17179870,   17111424,   17043522,   16976156,   16909321,   16843010,
  16777216
};

const uint8_t ff_reverse[256] = {
0x00,0x80,0x40,0xC0,0x20,0xA0,0x60,0xE0,0x10,0x90,0x50,0xD0,0x30,0xB0,0x70,0xF0,
0x08,0x88,0x48,0xC8,0x28,0xA8,0x68,0xE8,0x18,0x98,0x58,0xD8,0x38,0xB8,0x78,0xF8,
0x04,0x84,0x44,0xC4,0x24,0xA4,0x64,0xE4,0x14,0x94,0x54,0xD4,0x34,0xB4,0x74,0xF4,
0x0C,0x8C,0x4C,0xCC,0x2C,0xAC,0x6C,0xEC,0x1C,0x9C,0x5C,0xDC,0x3C,0xBC,0x7C,0xFC,
0x02,0x82,0x42,0xC2,0x22,0xA2,0x62,0xE2,0x12,0x92,0x52,0xD2,0x32,0xB2,0x72,0xF2,
0x0A,0x8A,0x4A,0xCA,0x2A,0xAA,0x6A,0xEA,0x1A,0x9A,0x5A,0xDA,0x3A,0xBA,0x7A,0xFA,
0x06,0x86,0x46,0xC6,0x26,0xA6,0x66,0xE6,0x16,0x96,0x56,0xD6,0x36,0xB6,0x76,0xF6,
0x0E,0x8E,0x4E,0xCE,0x2E,0xAE,0x6E,0xEE,0x1E,0x9E,0x5E,0xDE,0x3E,0xBE,0x7E,0xFE,
0x01,0x81,0x41,0xC1,0x21,0xA1,0x61,0xE1,0x11,0x91,0x51,0xD1,0x31,0xB1,0x71,0xF1,
0x09,0x89,0x49,0xC9,0x29,0xA9,0x69,0xE9,0x19,0x99,0x59,0xD9,0x39,0xB9,0x79,0xF9,
0x05,0x85,0x45,0xC5,0x25,0xA5,0x65,0xE5,0x15,0x95,0x55,0xD5,0x35,0xB5,0x75,0xF5,
0x0D,0x8D,0x4D,0xCD,0x2D,0xAD,0x6D,0xED,0x1D,0x9D,0x5D,0xDD,0x3D,0xBD,0x7D,0xFD,
0x03,0x83,0x43,0xC3,0x23,0xA3,0x63,0xE3,0x13,0x93,0x53,0xD3,0x33,0xB3,0x73,0xF3,
0x0B,0x8B,0x4B,0xCB,0x2B,0xAB,0x6B,0xEB,0x1B,0x9B,0x5B,0xDB,0x3B,0xBB,0x7B,0xFB,
0x07,0x87,0x47,0xC7,0x27,0xA7,0x67,0xE7,0x17,0x97,0x57,0xD7,0x37,0xB7,0x77,0xF7,
0x0F,0x8F,0x4F,0xCF,0x2F,0xAF,0x6F,0xEF,0x1F,0x9F,0x5F,0xDF,0x3F,0xBF,0x7F,0xFF,
};
