# See LICENSE for license details.

#*****************************************************************************
# pv.add.b
#-----------------------------------------------------------------------------
#
# Test pv.add.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.b, 0xfaf8f6f4, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.add.b, 0x0406080c, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.add.b, 0x77777777, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.add.b, 0xb6ac840f, 0xbc9c9800, 0xfa10ec0f )
  TEST_RR_OP( 6, pv.add.b, 0x1c624d62, 0xd20a09f9, 0x4a584469 )
  TEST_RR_OP( 7, pv.add.b, 0x83fb9bcc, 0x04e678a4, 0x7f152328 )
  TEST_RR_OP( 8, pv.add.b, 0xc30cc9c1, 0xfcffc63c, 0xc70d0385 )
  TEST_RR_OP( 9, pv.add.b, 0xc8ae65aa, 0x1879def1, 0xb03587b9 )
  TEST_RR_OP( 10, pv.add.b, 0x2a6b6adc, 0xe6de6303, 0x448d07d9 )
  TEST_RR_OP( 11, pv.add.b, 0x7fb34efe, 0xa56995a1, 0xda4ab95d )
  TEST_RR_OP( 12, pv.add.b, 0x3f4628e0, 0xf6def6dd, 0x49683203 )
  TEST_RR_OP( 13, pv.add.b, 0xf96e474b, 0x17a01a4e, 0xe2ce2dfd )
  TEST_RR_OP( 14, pv.add.b, 0x2f526a23, 0x5d95fded, 0xd2bd6d36 )
  TEST_RR_OP( 15, pv.add.b, 0x27593b90, 0x8050c506, 0xa709768a )
  TEST_RR_OP( 16, pv.add.b, 0x8bf354f5, 0xbd9269a2, 0xce61eb53 )
  TEST_RR_OP( 17, pv.add.b, 0x30c47f22, 0x3ecfc094, 0xf2f5bf8e )
  TEST_RR_OP( 18, pv.add.b, 0x106125f6, 0x19208858, 0xf7419d9e )
  TEST_RR_OP( 19, pv.add.b, 0xa64428e2, 0xaf88c9a8, 0xf7bc5f3a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.add.b, 0xcb9b8ec7, 0xf09b0080, 0xdb008e47 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.add.b, 0xbc357d4c, 0xfa05e5b8, 0xc2309894 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.add.b, 0x03cea94d, 0xac081574, 0x57c694d9 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.add.b, 0x4639782f, 0xa024a1a4, 0xa615d78b )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.add.b, 0x60dee87c, 0x306f743e )
  TEST_RR_SRC12_EQ_DEST( 25, pv.add.b, 0xc6d49c3a, 0x63eace1d )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.add.b, 0x126436dc, 0x09329bee, 0x09329bee )
  TEST_RR_DEST_BYPASS( 45, 1, pv.add.b, 0x1e5c464e, 0x0fae2327, 0x0fae2327 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.add.b, 0x1460c070, 0x0a30e0b8, 0x0a30e0b8 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.add.b, 0x1c822478, 0x0ec192bc, 0x0ec192bc )
  TEST_RR_DEST_BYPASS( 48, 1, pv.add.b, 0x32c834fa, 0x19641afd, 0x19641afd )
  TEST_RR_DEST_BYPASS( 49, 2, pv.add.b, 0xf81eb6cc, 0xfc8f5be6, 0xfc8f5be6 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.add.b, 0xefd0f4e0, 0x51802bd5, 0x9e50c90b )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.add.b, 0xf09f0a87, 0xfff50711, 0xf1aa0376 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.add.b, 0x9f71524d, 0xb95a0b55, 0xe61747f8 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.add.b, 0xa92a9443, 0x16dac9c0, 0x9350cb83 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.add.b, 0xddf499fb, 0x76204816, 0x67d451e5 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.add.b, 0x9f2e5007, 0x1de78140, 0x8247cfc7 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.add.b, 0xb4a4d8da, 0xca6faf36, 0xea3529a4 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.add.b, 0xc2e61c4c, 0x97de9ae1, 0x2b08826b )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.add.b, 0xc16cc404, 0xa0c35915, 0x21a96bef )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.add.b, 0x29a26eab, 0xdad1646b, 0x4fd10a40 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.add.b, 0xf3c33dd1, 0x32933e4a, 0xc130ff87 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.add.b, 0x2883a6af, 0xf4f58405, 0x348e22aa )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.add.b, 0x4720b35a, 0x5934d576, 0xeeecdee4 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.add.b, 0xceaf6be2, 0x84a022ec, 0x4a0f49f6 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.add.b, 0x1dc18619, 0x8e7741c3, 0x8f4a4556 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.add.b, 0xe4fdc5a7, 0x9e640ed8, 0x4699b7cf )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.add.b, 0x0158ce5a, 0xfd6abedd, 0x04ee107d )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.add.b, 0x2f0c90a2, 0x35e3780a, 0xfa291898 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.add.b, 0x0da67ec0, 0x0da67ec0 )
  TEST_RR_ZEROSRC1( 51, pv.add.b, 0x36f84e23, 0x36f84e23 )
  
  TEST_RR_ZEROSRC2( 52, pv.add.b, 0x7ba572a4, 0x7ba572a4 )
  TEST_RR_ZEROSRC2( 53, pv.add.b, 0xe4a263a4, 0xe4a263a4 )
  
  TEST_RR_ZEROSRC12( 54, pv.add.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.add.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.add.b, 0x3a34fa54, 0x613b9449 )
  TEST_RR_ZERODEST( 57, pv.add.b, 0x87fd0c5c, 0x82e02446 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
