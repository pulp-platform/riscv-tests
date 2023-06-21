# See LICENSE for license details.

#*****************************************************************************
# pv.shuffle2.h
#-----------------------------------------------------------------------------
#
# Test pv.shuffle2.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.shuffle2.h, 0xeeffeeff, 0x44332211, 0x00000000, 0xccddeeff )
  TEST_RRR_OP( 3, pv.shuffle2.h, 0xeeffccdd, 0x44332211, 0x00000001, 0xccddeeff )
  TEST_RRR_OP( 4, pv.shuffle2.h, 0xeeff2211, 0x44332211, 0x00000002, 0xccddeeff )
  TEST_RRR_OP( 5, pv.shuffle2.h, 0xeeff4433, 0x44332211, 0x00000003, 0xccddeeff )
  TEST_RRR_OP( 6, pv.shuffle2.h, 0xccddeeff, 0x44332211, 0x00010000, 0xccddeeff )
  TEST_RRR_OP( 7, pv.shuffle2.h, 0x2211eeff, 0x44332211, 0x00020000, 0xccddeeff )
  TEST_RRR_OP( 8, pv.shuffle2.h, 0x4433eeff, 0x44332211, 0x00030000, 0xccddeeff )
  TEST_RRR_OP( 9, pv.shuffle2.h, 0xdec6f75f, 0xf75f35f3, 0x08154c33, 0xdec64d8f )
  TEST_RRR_OP( 10, pv.shuffle2.h, 0x9d479d47, 0xc2232588, 0xe241f26d, 0x9d477a14 )
  TEST_RRR_OP( 11, pv.shuffle2.h, 0xcc7df366, 0xcc7dfa49, 0x5907710d, 0xf3668d90 )
  TEST_RRR_OP( 12, pv.shuffle2.h, 0x0d6a0a88, 0x0d6a4cb0, 0x0e9fabac, 0x73ab0a88 )
  TEST_RRR_OP( 13, pv.shuffle2.h, 0x5b5c3e49, 0x5b5c6ce1, 0x802b9719, 0x3e49276a )
  TEST_RRR_OP( 14, pv.shuffle2.h, 0x7c1f4296, 0x501add22, 0x12793298, 0x7c1f4296 )
  TEST_RRR_OP( 15, pv.shuffle2.h, 0x42974297, 0xfdb459a4, 0x239c67b0, 0x6aa94297 )
  TEST_RRR_OP( 16, pv.shuffle2.h, 0x55df3a40, 0x3a40a11d, 0x05c47e0b, 0x5d2a55df )
  TEST_RRR_OP( 17, pv.shuffle2.h, 0xd677e56a, 0x086be56a, 0xc5459d76, 0xd677c811 )
  TEST_RRR_OP( 18, pv.shuffle2.h, 0xa386a386, 0xdf40a386, 0x02e65b1e, 0x63796ad1 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 19, pv.shuffle2.h, 0x228f0aa4, 0x228f0aa4, 0x1949eca0 )
  TEST_RRR_SRC1_EQ_DEST( 20, pv.shuffle2.h, 0xd7e7be7c, 0xd7e7be7c, 0x08912b4e )
  
  TEST_RRR_SRC2_EQ_DEST( 21, pv.shuffle2.h, 0x3823407e, 0x407edca5, 0xb0c43823 )
  TEST_RRR_SRC2_EQ_DEST( 22, pv.shuffle2.h, 0xdfb3f3eb, 0xdfb3a302, 0xf3ebe1f5 )
  
  TEST_RRR_SRC12_EQ_DEST( 23, pv.shuffle2.h, 0x5bb524b4, 0x24b45bb5 )
  TEST_RRR_SRC12_EQ_DEST( 24, pv.shuffle2.h, 0x335bcc7a, 0x335bcc7a )
  
  TEST_RRR_DEST_BYPASS( 43, 0, pv.shuffle2.h, 0x7feb60a0, 0x7feb9c78, 0x1c476adc, 0x409a60a0 )
  TEST_RRR_DEST_BYPASS( 44, 1, pv.shuffle2.h, 0x4436307a, 0x31dc4436, 0xe796a88d, 0x307a2af5 )
  TEST_RRR_DEST_BYPASS( 45, 2, pv.shuffle2.h, 0x8b1cf8b4, 0xca63f8b4, 0x4e251926, 0x8b1cd622 )
  TEST_RRR_DEST_BYPASS( 46, 0, pv.shuffle2.h, 0xd4e701c4, 0xd40d01c4, 0x2254bdd6, 0xee40d4e7 )
  TEST_RRR_DEST_BYPASS( 47, 1, pv.shuffle2.h, 0xd685d685, 0xd68585e2, 0x9f0b3557, 0x01d3d75b )
  TEST_RRR_DEST_BYPASS( 48, 2, pv.shuffle2.h, 0x4fc20b6c, 0x9a774fc2, 0x63be086c, 0xeb120b6c )
  TEST_RRR_SRC3_BYPASS( 49, 0, pv.shuffle2.h, 0x7df17df1, 0xdb6640c4, 0x5909fa39, 0x7df15944 )
  TEST_RRR_SRC3_BYPASS( 50, 1, pv.shuffle2.h, 0x1f281f28, 0x29071f28, 0x5eba7182, 0x6604f1dd )
  TEST_RRR_SRC3_BYPASS( 51, 2, pv.shuffle2.h, 0x1aadc23a, 0x1aadb6f4, 0x496782f8, 0x7814c23a )
  TEST_RRR_SRC3_BYPASS( 52, 0, pv.shuffle2.h, 0x87768404, 0x83668404, 0x9cd5226e, 0x8776a37b )
  TEST_RRR_SRC3_BYPASS( 53, 1, pv.shuffle2.h, 0x65042aea, 0x6504f74b, 0x6ffbed78, 0xbe3d2aea )
  TEST_RRR_SRC3_BYPASS( 54, 2, pv.shuffle2.h, 0x435f435f, 0x435ff4e1, 0xa2b76a07, 0x4d2ff9be )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 25, 0, 0, pv.shuffle2.h, 0x70be70be, 0x3bf269e2, 0x5e71c49d, 0x70bede4b )
  TEST_RRR_SRC12_BYPASS( 26, 0, 1, pv.shuffle2.h, 0x6eac796f, 0x796fd645, 0x346820cf, 0xc05a6eac )
  TEST_RRR_SRC12_BYPASS( 27, 0, 2, pv.shuffle2.h, 0xb7215f3f, 0xb7215f3f, 0x25cbb416, 0xc30fb773 )
  TEST_RRR_SRC12_BYPASS( 28, 1, 0, pv.shuffle2.h, 0xecf8ecf8, 0xecf88ef8, 0x974b220b, 0x2be799f0 )
  TEST_RRR_SRC12_BYPASS( 29, 1, 1, pv.shuffle2.h, 0xa287c2c7, 0x67ccc2c7, 0x68301faa, 0xf068a287 )
  TEST_RRR_SRC12_BYPASS( 30, 1, 2, pv.shuffle2.h, 0xc53bc53b, 0xc53b0cbb, 0x89d326c7, 0xab355f4c )
  TEST_RRR_SRC12_BYPASS( 31, 2, 0, pv.shuffle2.h, 0x6481ae43, 0xefc36481, 0x059ade28, 0x2c1dae43 )
  TEST_RRR_SRC12_BYPASS( 32, 2, 1, pv.shuffle2.h, 0x52ea81e5, 0x81e5ad1c, 0x24b4481f, 0xcdfa52ea )
  TEST_RRR_SRC12_BYPASS( 33, 2, 2, pv.shuffle2.h, 0x832ee7b8, 0xcb58832e, 0x8a5e4645, 0xe7b88d49 )
  TEST_RRR_SRC12_BYPASS( 34, 0, 0, pv.shuffle2.h, 0x295c295c, 0x295cfa17, 0x0dd371db, 0xc34bff1b )
  TEST_RRR_SRC12_BYPASS( 35, 0, 1, pv.shuffle2.h, 0xbb7bbb7b, 0x4b66bb7b, 0x959a19fe, 0x75619cc7 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 2, pv.shuffle2.h, 0x2e3fbc96, 0x1fe1bc96, 0x880442ba, 0xbfd62e3f )
  TEST_RRR_SRC12_BYPASS( 37, 1, 0, pv.shuffle2.h, 0x44ffd1de, 0x1f7b7a9e, 0x118c5699, 0xd1de44ff )
  TEST_RRR_SRC12_BYPASS( 38, 1, 1, pv.shuffle2.h, 0xcd9faa02, 0xcd9f9191, 0xc6dbd2fd, 0xaa02cc70 )
  TEST_RRR_SRC12_BYPASS( 39, 1, 2, pv.shuffle2.h, 0x669144cb, 0x40766691, 0xd6669588, 0x4e8244cb )
  TEST_RRR_SRC12_BYPASS( 40, 2, 0, pv.shuffle2.h, 0xf6faf6fa, 0xf6fa96e7, 0xe51323df, 0xf1a8a4c1 )
  TEST_RRR_SRC12_BYPASS( 41, 2, 1, pv.shuffle2.h, 0x19cd19cd, 0xf39a6210, 0x9a5866f8, 0x729f19cd )
  TEST_RRR_SRC12_BYPASS( 42, 2, 2, pv.shuffle2.h, 0xb1a6b1a6, 0xfffa0a63, 0x8375c285, 0xb1a6b6e3 )
  
  

  TEST_RRR_ZEROSRC1( 55, pv.shuffle2.h, 0x00000000, 0x7176b3fb, 0xf101173a )
  TEST_RRR_ZEROSRC1( 56, pv.shuffle2.h, 0x75210000, 0xb040c483, 0x49c27521 )
  
  TEST_RRR_ZEROSRC2( 57, pv.shuffle2.h, 0x9ae99ae9, 0x5e63fde1, 0x2b749ae9 )
  TEST_RRR_ZEROSRC2( 58, pv.shuffle2.h, 0x2daa2daa, 0x1bc410d0, 0x4d7f2daa )
  
  TEST_RRR_ZEROSRC3( 59, pv.shuffle2.h, 0x28b1328f, 0x28b1328f, 0xf79f585a )
  TEST_RRR_ZEROSRC3( 60, pv.shuffle2.h, 0x00000000, 0x94c11706, 0x9e801de5 )
  
  TEST_RRR_ZEROSRC12( 61, pv.shuffle2.h, 0x05890589, 0xe4a80589 )
  TEST_RRR_ZEROSRC12( 62, pv.shuffle2.h, 0x04a004a0, 0x04f904a0 )
  
  TEST_RRR_ZEROSRC123( 63, pv.shuffle2.h, 0x00000000 )
  TEST_RRR_ZEROSRC123( 64, pv.shuffle2.h, 0x00000000 )
  
  TEST_RRR_ZERODEST( 65, pv.shuffle2.h, 0xd7d70fc8, 0xfc1647de )
  TEST_RRR_ZERODEST( 66, pv.shuffle2.h, 0x3aa40f7d, 0x28026daf )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
