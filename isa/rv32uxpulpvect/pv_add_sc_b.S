# See LICENSE for license details.

#*****************************************************************************
# pv.add.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.add.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.sc.b, 0xf7f6f5f4, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.add.sc.b, 0x08090a0c, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.add.sc.b, 0x44556677, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.add.sc.b, 0xd3c0d2ec, 0x624f617b, 0x57738971 )
  TEST_RR_OP( 6, pv.add.sc.b, 0x8a737475, 0x765f6061, 0xa58d2514 )
  TEST_RR_OP( 7, pv.add.sc.b, 0x84c9b8c5, 0xe62b1a27, 0xd43f7c9e )
  TEST_RR_OP( 8, pv.add.sc.b, 0x7007782d, 0x45dc4d02, 0x4e4aed2b )
  TEST_RR_OP( 9, pv.add.sc.b, 0x126089f8, 0x22709908, 0xe4e825f0 )
  TEST_RR_OP( 10, pv.add.sc.b, 0x33e5b9dd, 0x5f11e509, 0x700effd4 )
  TEST_RR_OP( 11, pv.add.sc.b, 0xbd744dd9, 0x4900d965, 0x1f17f874 )
  TEST_RR_OP( 12, pv.add.sc.b, 0x8c72e8b1, 0x7056cc95, 0x1f7a091c )
  TEST_RR_OP( 13, pv.add.sc.b, 0xe8ededca, 0x3d42421f, 0x985cc2ab )
  TEST_RR_OP( 14, pv.add.sc.b, 0xbdcb1444, 0x4e5ca5d5, 0x44568b6f )
  TEST_RR_OP( 15, pv.add.sc.b, 0xf48e717e, 0xf8927582, 0x03ec8efc )
  TEST_RR_OP( 16, pv.add.sc.b, 0xdc3b1b54, 0x0665457e, 0x9926afd6 )
  TEST_RR_OP( 17, pv.add.sc.b, 0x99d90a18, 0x7abaebf9, 0x627e511f )
  TEST_RR_OP( 18, pv.add.sc.b, 0x081f4bd3, 0x4a618d15, 0x417df2be )
  TEST_RR_OP( 19, pv.add.sc.b, 0x178cf577, 0x4bc029ab, 0xfd2a98cc )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.add.sc.b, 0xcf314103, 0x4fb1c183, 0xa7f45b80 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.add.sc.b, 0x700e4893, 0x7d1b55a0, 0x19a645f3 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.add.sc.b, 0x43f0b78e, 0x0bb87f56, 0xb6fb5438 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.add.sc.b, 0xedb801d3, 0xad78c193, 0xc5637140 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.add.sc.b, 0x40054c4a, 0x1be02725 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.add.sc.b, 0x0a632488, 0x469f60c4 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.add.sc.b, 0x82d14754, 0xd8279daa, 0xd8279daa )
  TEST_RR_DEST_BYPASS( 45, 1, pv.add.sc.b, 0x77fa44bc, 0x199ce65e, 0x199ce65e )
  TEST_RR_DEST_BYPASS( 46, 2, pv.add.sc.b, 0xe0288526, 0xcd157213, 0xcd157213 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.add.sc.b, 0x17255e76, 0x5c6aa3bb, 0x5c6aa3bb )
  TEST_RR_DEST_BYPASS( 48, 1, pv.add.sc.b, 0x5e32aa76, 0xa377efbb, 0xa377efbb )
  TEST_RR_DEST_BYPASS( 49, 2, pv.add.sc.b, 0x32501d1e, 0x23410e0f, 0x23410e0f )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.add.sc.b, 0x37fbd923, 0x26eac812, 0x59638611 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.add.sc.b, 0x3ff02bc6, 0x1ccd08a3, 0xb9db5423 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.add.sc.b, 0x6b72deb0, 0x9aa10ddf, 0xf10414d1 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.add.sc.b, 0x3287ebde, 0x66bb1f12, 0xb5e3dacc )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.add.sc.b, 0x94864659, 0x4032f205, 0xca9dc954 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.add.sc.b, 0x1305782a, 0x6153c678, 0x65b7e1b2 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.add.sc.b, 0xc12fa4f8, 0x930176ca, 0x6075aa2e )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.add.sc.b, 0x632440bb, 0xe6a7c33e, 0xde94237d )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.add.sc.b, 0x4dda24dc, 0xde6bb56d, 0xd636436f )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.add.sc.b, 0xe03c8a57, 0x8ce83603, 0xc259ed54 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.add.sc.b, 0xd5a42031, 0x7746c2d3, 0x1e61be5e )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.add.sc.b, 0xd95cdf3d, 0x4acd50ae, 0x6af4a88f )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.add.sc.b, 0xf8846222, 0x972301c1, 0xbeefc861 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.add.sc.b, 0xb9cd0076, 0xa0b4e75d, 0x811ac719 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.add.sc.b, 0xcabd391c, 0x918400e3, 0xb9657239 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.add.sc.b, 0xbc02fd02, 0xed332e33, 0x03625ccf )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.add.sc.b, 0x82aad8af, 0x0a326037, 0x9f52c278 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.add.sc.b, 0x6ef56927, 0xad34a866, 0x1d29bac1 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.add.sc.b, 0x0b0b0b0b, 0x521f080b )
  TEST_RR_ZEROSRC1( 51, pv.add.sc.b, 0xb5b5b5b5, 0x690166b5 )
  
  TEST_RR_ZEROSRC2( 52, pv.add.sc.b, 0xe225a5f6, 0xe225a5f6 )
  TEST_RR_ZEROSRC2( 53, pv.add.sc.b, 0x233d4049, 0x233d4049 )
  
  TEST_RR_ZEROSRC12( 54, pv.add.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.add.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.add.sc.b, 0x4320ef44, 0xd0a39481 )
  TEST_RR_ZERODEST( 57, pv.add.sc.b, 0x76ed4d75, 0x46ceb905 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
