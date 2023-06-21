# See LICENSE for license details.

#*****************************************************************************
# pv.min.h
#-----------------------------------------------------------------------------
#
# Test pv.min.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.min.h, 0x7b7a7978, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.min.h, 0x80818284, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.min.h, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.min.h, 0xd316b213, 0x595eb213, 0xd316e95a )
  TEST_RR_OP( 6, pv.min.h, 0x9621b1e4, 0x9621b1e4, 0xf2286cf1 )
  TEST_RR_OP( 7, pv.min.h, 0x9966c5dc, 0x9966c5dc, 0x6ec3f8a2 )
  TEST_RR_OP( 8, pv.min.h, 0xc4338dbf, 0xc4338dbf, 0x2a2030cb )
  TEST_RR_OP( 9, pv.min.h, 0xafa44459, 0xafa46791, 0x22184459 )
  TEST_RR_OP( 10, pv.min.h, 0xcb12dccc, 0xf8cc6acc, 0xcb12dccc )
  TEST_RR_OP( 11, pv.min.h, 0x510cf6ea, 0x7f57300b, 0x510cf6ea )
  TEST_RR_OP( 12, pv.min.h, 0x9f626410, 0x1c936410, 0x9f626b4e )
  TEST_RR_OP( 13, pv.min.h, 0x046d8162, 0x046d35c6, 0x6a578162 )
  TEST_RR_OP( 14, pv.min.h, 0xb2ba0119, 0xb2ba0119, 0x1cfa36b7 )
  TEST_RR_OP( 15, pv.min.h, 0xcf7bbfc5, 0xcf7bbfc5, 0xd0d744fa )
  TEST_RR_OP( 16, pv.min.h, 0xd28be843, 0xd28b416b, 0x4e9ee843 )
  TEST_RR_OP( 17, pv.min.h, 0xcefce6c0, 0x5185f600, 0xcefce6c0 )
  TEST_RR_OP( 18, pv.min.h, 0x83e08b0b, 0x83e03ae3, 0x2f718b0b )
  TEST_RR_OP( 19, pv.min.h, 0x918c8c07, 0x918cbdb4, 0x58f68c07 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.min.h, 0xca41ca11, 0x7122ca11, 0xca4145ca )
  TEST_RR_SRC1_EQ_DEST( 21, pv.min.h, 0xa547a69e, 0xee9a4ba6, 0xa547a69e )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.min.h, 0x1889c218, 0x3d0256ee, 0x1889c218 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.min.h, 0x92664848, 0x9266612c, 0x30a84848 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.min.h, 0xc4932996, 0xc4932996 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.min.h, 0xe827e560, 0xe827e560 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.min.h, 0x8cd64cd5, 0x8cd64cd5, 0x8cd64cd5 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.min.h, 0x4f054184, 0x4f054184, 0x4f054184 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.min.h, 0x04eb16e9, 0x04eb16e9, 0x04eb16e9 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.min.h, 0x0c982f12, 0x0c982f12, 0x0c982f12 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.min.h, 0x11231d00, 0x11231d00, 0x11231d00 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.min.h, 0x88fcd47f, 0x88fcd47f, 0x88fcd47f )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.min.h, 0x123ab634, 0x123a46bd, 0x2c71b634 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.min.h, 0xc06c8a90, 0x07ec8a90, 0xc06ceb75 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.min.h, 0xacc19169, 0xacc13022, 0x4e939169 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.min.h, 0x5d0cc86c, 0x66100cc5, 0x5d0cc86c )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.min.h, 0x45bef363, 0x45be0f7d, 0x4c7bf363 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.min.h, 0x9472f07f, 0x57b1f07f, 0x9472fac4 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.min.h, 0xf1783820, 0xf1787ce4, 0x63e33820 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.min.h, 0xe03f38d3, 0x1cc338d3, 0xe03f5bb2 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.min.h, 0x9b468ccb, 0xf98bf407, 0x9b468ccb )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.min.h, 0x5d5aceec, 0x5d5a5050, 0x6940ceec )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.min.h, 0xa4369cc4, 0xa436c626, 0x49849cc4 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.min.h, 0x9fbc107d, 0xbdb0107d, 0x9fbc2178 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.min.h, 0xf8b5d1c8, 0x13324840, 0xf8b5d1c8 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.min.h, 0xc0958683, 0x7b9cb41c, 0xc0958683 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.min.h, 0x0240419b, 0x0240419b, 0x7e194bb7 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.min.h, 0x5f6a35cb, 0x769235cb, 0x5f6a7141 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.min.h, 0x944c973b, 0x49d475b8, 0x944c973b )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.min.h, 0x02b1c31c, 0x2a2ec31c, 0x02b10d1d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.min.h, 0x00000000, 0x7d704c3a )
  TEST_RR_ZEROSRC1( 51, pv.min.h, 0x866a0000, 0x866a2bc5 )
  
  TEST_RR_ZEROSRC2( 52, pv.min.h, 0x00000000, 0x7edc42df )
  TEST_RR_ZEROSRC2( 53, pv.min.h, 0x00000000, 0x3c4d292c )
  
  TEST_RR_ZEROSRC12( 54, pv.min.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.min.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.min.h, 0xe37d6b54, 0x2cbf8c40 )
  TEST_RR_ZERODEST( 57, pv.min.h, 0x212db1a3, 0x802f3130 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
