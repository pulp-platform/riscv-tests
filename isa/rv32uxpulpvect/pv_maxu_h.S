# See LICENSE for license details.

#*****************************************************************************
# pv.maxu.h
#-----------------------------------------------------------------------------
#
# Test pv.maxu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.maxu.h, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.maxu.h, 0x77665544, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.maxu.h, 0xe955844b, 0xe9555a6f, 0xe6e4844b )
  TEST_RR_OP( 5, pv.maxu.h, 0x5293a276, 0x52937e30, 0x1c47a276 )
  TEST_RR_OP( 6, pv.maxu.h, 0x5b8fb6a7, 0x5b8f0dbc, 0x0c60b6a7 )
  TEST_RR_OP( 7, pv.maxu.h, 0xf314a7f4, 0x6f43a7f4, 0xf31489dc )
  TEST_RR_OP( 8, pv.maxu.h, 0x2f746f12, 0x2f7434ce, 0x004d6f12 )
  TEST_RR_OP( 9, pv.maxu.h, 0xdd75d2c0, 0xdd7537be, 0xba2dd2c0 )
  TEST_RR_OP( 10, pv.maxu.h, 0xc91d41b5, 0x032735db, 0xc91d41b5 )
  TEST_RR_OP( 11, pv.maxu.h, 0x16f7cc69, 0x16f75680, 0x0bd7cc69 )
  TEST_RR_OP( 12, pv.maxu.h, 0x79a4bc84, 0x1ac2bc84, 0x79a43ea7 )
  TEST_RR_OP( 13, pv.maxu.h, 0xc09aa371, 0xbcc137e8, 0xc09aa371 )
  TEST_RR_OP( 14, pv.maxu.h, 0x89a27de1, 0x89a27de1, 0x1cb55e9c )
  TEST_RR_OP( 15, pv.maxu.h, 0xbdab900d, 0xbdab900d, 0xbc9361d5 )
  TEST_RR_OP( 16, pv.maxu.h, 0xe68166db, 0xe6815f4b, 0x56b666db )
  TEST_RR_OP( 17, pv.maxu.h, 0xbe162a98, 0x275e2a98, 0xbe1623e5 )
  TEST_RR_OP( 18, pv.maxu.h, 0xd4c4f9e5, 0x17eef9e5, 0xd4c4373e )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.maxu.h, 0x932baeaf, 0x64aa6660, 0x932baeaf )
  TEST_RR_SRC1_EQ_DEST( 20, pv.maxu.h, 0xc57ecc14, 0x931a3e1f, 0xc57ecc14 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.maxu.h, 0x4cdea0f7, 0x4cdea0f7, 0x2cd670d0 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.maxu.h, 0xcf127037, 0x43cf7037, 0xcf123b8c )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.maxu.h, 0x0fe1519d, 0x0fe1519d )
  TEST_RR_SRC12_EQ_DEST( 24, pv.maxu.h, 0x2df97a83, 0x2df97a83 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.maxu.h, 0xe3ca0f16, 0xe3ca0f16, 0xe3ca0f16 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.maxu.h, 0xa7ffcf68, 0xa7ffcf68, 0xa7ffcf68 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.maxu.h, 0xeb44fa9d, 0xeb44fa9d, 0xeb44fa9d )
  TEST_RR_DEST_BYPASS( 46, 0, pv.maxu.h, 0xbee69614, 0xbee69614, 0xbee69614 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.maxu.h, 0xae664568, 0xae664568, 0xae664568 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.maxu.h, 0x409e17b4, 0x409e17b4, 0x409e17b4 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.maxu.h, 0x9914f3c3, 0x9914010b, 0x5874f3c3 )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.maxu.h, 0x9254ab49, 0x3232ab49, 0x9254a776 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.maxu.h, 0xbd623c6f, 0xbd623c6f, 0x36042a33 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.maxu.h, 0xc234c976, 0x03b8003b, 0xc234c976 )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.maxu.h, 0xc8cdabd1, 0xc8cd2b52, 0x5d3aabd1 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.maxu.h, 0x7c19d366, 0x7c1970bb, 0x6958d366 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.maxu.h, 0x7945ffca, 0x7945ffca, 0x0b1d4101 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.maxu.h, 0x8c9e580f, 0x6b5e580f, 0x8c9e09a6 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.maxu.h, 0xc0ecebc1, 0xc0ecebc1, 0x6b33d66b )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.maxu.h, 0xfcbba25d, 0xad7e7786, 0xfcbba25d )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.maxu.h, 0xc16ae496, 0xc16a6508, 0x47f1e496 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.maxu.h, 0xca5c8c7c, 0x7ebe8c7c, 0xca5c72d1 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.maxu.h, 0x6ef1b0a3, 0x006fb0a3, 0x6ef164bb )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.maxu.h, 0xe1c5e799, 0xe1c54931, 0x0a90e799 )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.maxu.h, 0xc653dd5f, 0xa3e88884, 0xc653dd5f )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.maxu.h, 0xd1fb941a, 0xd1fb941a, 0x0c8b4439 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.maxu.h, 0xd8d1c0a2, 0xd8d10fda, 0x94a1c0a2 )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.maxu.h, 0xe34aae54, 0xe34aae54, 0x8dcb16e1 )
  
  

  TEST_RR_ZEROSRC1( 49, pv.maxu.h, 0xde894bfb, 0xde894bfb )
  TEST_RR_ZEROSRC1( 50, pv.maxu.h, 0xbfbfe589, 0xbfbfe589 )
  
  TEST_RR_ZEROSRC2( 51, pv.maxu.h, 0xfa31f59a, 0xfa31f59a )
  TEST_RR_ZEROSRC2( 52, pv.maxu.h, 0xb3e47233, 0xb3e47233 )
  
  TEST_RR_ZEROSRC12( 53, pv.maxu.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.maxu.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.maxu.h, 0xf25ec4f4, 0x4a8dd607 )
  TEST_RR_ZERODEST( 56, pv.maxu.h, 0xd28de5d7, 0x171709d5 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
