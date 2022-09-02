# See LICENSE for license details.

#*****************************************************************************
# pv.add.h.div8
#-----------------------------------------------------------------------------
#
# Test pv.add.h.div8 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.h.div8, 0x00000000, 0x00000000, 0x00000000 )
  TEST_RR_OP( 3, pv.add.h.div8, 0x00000000, 0x80000000, 0x80000000 )
  TEST_RR_OP( 4, pv.add.h.div8, 0xffffffff, 0x80000000, 0x7fffffff )
  TEST_RR_OP( 5, pv.add.h.div8, 0xffffffff, 0x7fffffff, 0x7fffffff )
  TEST_RR_OP( 6, pv.add.h.div8, 0xffffffef, 0xffffffbc, 0xffffffbf )
  TEST_RR_OP( 7, pv.add.h.div8, 0x03320daa, 0x147a9d19, 0x0516d037 )
  TEST_RR_OP( 8, pv.add.h.div8, 0x0836ff76, 0x56dc4f8b, 0xead5ac28 )
  TEST_RR_OP( 9, pv.add.h.div8, 0xf1100210, 0x25dec094, 0x62a94fed )
  TEST_RR_OP( 10, pv.add.h.div8, 0xf6c1021a, 0x39b7a4eb, 0x7c566be6 )
  TEST_RR_OP( 11, pv.add.h.div8, 0xf7dc0cfd, 0x782b9608, 0x46bbd1e2 )
  TEST_RR_OP( 12, pv.add.h.div8, 0x01a00a01, 0x9cbb1c0a, 0x704a3403 )
  TEST_RR_OP( 13, pv.add.h.div8, 0xf7bf007f, 0x6c349664, 0x51ca6d94 )
  TEST_RR_OP( 14, pv.add.h.div8, 0xfeeefbb5, 0x9eef5047, 0x58858d65 )
  TEST_RR_OP( 15, pv.add.h.div8, 0x0ac0f852, 0xc5112b56, 0x90f1973b )
  TEST_RR_OP( 16, pv.add.h.div8, 0xf46f0cdf, 0x9a9a7a46, 0x08e5ecb2 )
  TEST_RR_OP( 17, pv.add.h.div8, 0x09e2fae8, 0x4f4c4183, 0xffc895bd )
  TEST_RR_OP( 18, pv.add.h.div8, 0xf22bfff5, 0xdbf1adac, 0xb56b51fc )
  TEST_RR_OP( 19, pv.add.h.div8, 0x0c62ff37, 0x458c1627, 0x1d88e395 )
  TEST_RR_OP( 20, pv.add.h.div8, 0xf16d0036, 0x81bbaad2, 0x09b456e1 )
  TEST_RR_OP( 21, pv.add.h.div8, 0x0dfdf238, 0x538a0850, 0x1c648975 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.add.h.div8, 0x06ca08e5, 0x3baa8c59, 0xfaacbad1 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.add.h.div8, 0x0c61f874, 0x528db931, 0x10800a76 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.add.h.div8, 0x020602ff, 0x131978b6, 0xfd1c9f47 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.add.h.div8, 0x05aa0ae8, 0x02e8c22d, 0x2a6b9517 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.add.h.div8, 0xf7ceffe8, 0x5f3b7fa2 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.add.h.div8, 0xf811084c, 0xe046a130 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.add.h.div8, 0x07e2fa5a, 0x9f8ae969, 0x9f8ae969 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.add.h.div8, 0xf1660c98, 0x459a3262, 0x459a3262 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.add.h.div8, 0xf549f9c5, 0xd5276714, 0xd5276714 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.add.h.div8, 0xfb8807c3, 0xee231f0f, 0xee231f0f )
  TEST_RR_DEST_BYPASS( 50, 1, pv.add.h.div8, 0x068103ba, 0x1a068ee8, 0x1a068ee8 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.add.h.div8, 0xf9a7027c, 0xe69c89f1, 0xe69c89f1 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.add.h.div8, 0xf3d3f882, 0xb9ddfddb, 0xe4bcc63b )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.add.h.div8, 0xf5e90b35, 0xaf914e89, 0xffbe0b22 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.add.h.div8, 0xf01f0a7d, 0xafd33060, 0xd1262389 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.add.h.div8, 0x0b8d0822, 0x35e6bf43, 0x268581cf )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.add.h.div8, 0x0627f525, 0xc9cd1284, 0x677196a9 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.add.h.div8, 0x0870f008, 0x6bd4af2d, 0xd7b3d113 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.add.h.div8, 0xfd09fa1b, 0x15164972, 0xd3398768 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.add.h.div8, 0x045ef2e3, 0xad4ec6ec, 0x75a5d031 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.add.h.div8, 0xf922f076, 0x2fdc4e2e, 0x993a3589 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.add.h.div8, 0x0ac50eea, 0x068b14b0, 0x4fa262a4 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.add.h.div8, 0xf972f1fd, 0x23e783c6, 0xa7b00c25 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.add.h.div8, 0xffc10915, 0x2c3bf39d, 0xd1ce550b )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.add.h.div8, 0x0167f2fe, 0x877352b2, 0x83c94540 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.add.h.div8, 0xf889067b, 0x4f55c703, 0x74f66cdb )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.add.h.div8, 0xf2db0cb0, 0x7708d33b, 0x1fd39246 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.add.h.div8, 0x0becf24f, 0xe5810cc5, 0x79e285b5 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.add.h.div8, 0xff500f2d, 0x34aa11f0, 0xc5d86778 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.add.h.div8, 0xfc4af05d, 0x3ea8bc14, 0xa3aec6da )
  
  

  TEST_RR_ZEROSRC1( 52, pv.add.h.div8, 0x0dcc041c, 0x6e6420e4 )
  TEST_RR_ZEROSRC1( 53, pv.add.h.div8, 0xf90ff0aa, 0xc87a8556 )
  
  TEST_RR_ZEROSRC2( 54, pv.add.h.div8, 0x025cfa8f, 0x12e6d47c )
  TEST_RR_ZEROSRC2( 55, pv.add.h.div8, 0xf185f5d8, 0x8c2faec7 )
  
  TEST_RR_ZEROSRC12( 56, pv.add.h.div8, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.add.h.div8, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.add.h.div8, 0x3cf56650, 0x213f0946 )
  TEST_RR_ZERODEST( 59, pv.add.h.div8, 0x1ca9bd75, 0x38a22939 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
