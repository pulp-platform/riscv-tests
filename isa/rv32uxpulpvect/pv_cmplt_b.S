# See LICENSE for license details.

#*****************************************************************************
# pv.cmplt.b
#-----------------------------------------------------------------------------
#
# Test pv.cmplt.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmplt.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmplt.b, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmplt.b, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmplt.b, 0x01010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmplt.b, 0x01000100, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmplt.b, 0x01000001, 0xaeef0807, 0xd5a2c05e )
  TEST_RR_OP( 8, pv.cmplt.b, 0x01000001, 0xecc82aaa, 0x0dbfde39 )
  TEST_RR_OP( 9, pv.cmplt.b, 0x01010100, 0x9c35953d, 0xa03c76ee )
  TEST_RR_OP( 10, pv.cmplt.b, 0x00010001, 0x25f52105, 0x947b9f30 )
  TEST_RR_OP( 11, pv.cmplt.b, 0x01010100, 0x9fef8c29, 0xee7b47ce )
  TEST_RR_OP( 12, pv.cmplt.b, 0x01000100, 0xb17bc80e, 0x47c235dd )
  TEST_RR_OP( 13, pv.cmplt.b, 0x00000000, 0x9b6b47fa, 0x83b39da3 )
  TEST_RR_OP( 14, pv.cmplt.b, 0x01010100, 0x04cc9d6e, 0x0afec3f6 )
  TEST_RR_OP( 15, pv.cmplt.b, 0x00010001, 0xad3c38e2, 0x85499634 )
  TEST_RR_OP( 16, pv.cmplt.b, 0x01010000, 0x89280c0d, 0xd04fb8b4 )
  TEST_RR_OP( 17, pv.cmplt.b, 0x01000101, 0xc76dbd97, 0xf5f36d5e )
  TEST_RR_OP( 18, pv.cmplt.b, 0x01000101, 0x9522de93, 0xdffd7579 )
  TEST_RR_OP( 19, pv.cmplt.b, 0x01010000, 0x13ad314c, 0x4dccfd26 )
  TEST_RR_OP( 20, pv.cmplt.b, 0x00010101, 0xd5f2a6fc, 0x81697a4e )
  TEST_RR_OP( 21, pv.cmplt.b, 0x01010100, 0xca914d00, 0xf77378c9 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmplt.b, 0x00000100, 0xf6080221, 0xcf9e6cab )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmplt.b, 0x00010100, 0xd6f9ad3d, 0xcf157aa7 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmplt.b, 0x01010101, 0x844b8490, 0xd259c47e )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmplt.b, 0x01000000, 0xf15b37ce, 0x06c320bb )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmplt.b, 0x00000000, 0xe95f81f8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmplt.b, 0x00000000, 0x1c0a7376 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmplt.b, 0x00000000, 0xa22196e9, 0xa22196e9 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmplt.b, 0x00000000, 0xafde724f, 0xafde724f )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmplt.b, 0x00000000, 0x9f596841, 0x9f596841 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmplt.b, 0x00000000, 0x98cdd4d3, 0x98cdd4d3 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmplt.b, 0x00000000, 0x163fe79c, 0x163fe79c )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmplt.b, 0x00000000, 0x55abb919, 0x55abb919 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmplt.b, 0x00000100, 0xda08a8d5, 0x96b8fec4 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmplt.b, 0x01010100, 0xdfa0f3f7, 0xf10f44ea )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmplt.b, 0x01000101, 0x95f3da1a, 0x76ee1f4b )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmplt.b, 0x00010001, 0x05b20df4, 0x8837a367 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmplt.b, 0x00010001, 0x4187388c, 0xcffa133d )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmplt.b, 0x00000100, 0x0559a6a2, 0xe8ea3996 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmplt.b, 0x01000100, 0xa764c985, 0xb5f44381 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmplt.b, 0x00010101, 0x0ee4d10a, 0xcc062f71 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmplt.b, 0x01000001, 0xf30860c8, 0x1aa0d208 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmplt.b, 0x00010001, 0x739d669b, 0xab1536e5 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmplt.b, 0x01010001, 0xac8105b3, 0xd11afb0d )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmplt.b, 0x00000000, 0xf06f4c6d, 0xba640d11 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmplt.b, 0x00010001, 0x710cebbb, 0x3a6cc542 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmplt.b, 0x00010001, 0x78a56348, 0xd8ea9457 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmplt.b, 0x01000101, 0xb476493a, 0xf0e66442 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmplt.b, 0x00010000, 0x2b14d83e, 0xd31dc527 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmplt.b, 0x01010100, 0xd7d6861e, 0x57395690 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmplt.b, 0x00000001, 0xfab87d91, 0xe58ab609 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmplt.b, 0x00010101, 0x86413257 )
  TEST_RR_ZEROSRC1( 53, pv.cmplt.b, 0x01010101, 0x0a182b0b )
  
  TEST_RR_ZEROSRC2( 54, pv.cmplt.b, 0x01010000, 0xb1b56633 )
  TEST_RR_ZEROSRC2( 55, pv.cmplt.b, 0x00010001, 0x1fbf55bf )
  
  TEST_RR_ZEROSRC12( 56, pv.cmplt.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmplt.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmplt.b, 0xb52e8f26, 0x9e79fa34 )
  TEST_RR_ZERODEST( 59, pv.cmplt.b, 0x6b1d16a9, 0x8bdc94bc )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
