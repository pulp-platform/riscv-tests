# See LICENSE for license details.

#*****************************************************************************
# pv.sub.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.sub.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.sc.b, 0x07060504, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.sub.sc.b, 0xf8f9fafc, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.sub.sc.b, 0xbccddeef, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.sub.sc.b, 0x984f1251, 0xa45b1e5d, 0x4b17670c )
  TEST_RR_OP( 6, pv.sub.sc.b, 0xcd6635b7, 0x3fd8a729, 0xe08c1672 )
  TEST_RR_OP( 7, pv.sub.sc.b, 0x6f3d469a, 0x30fe075b, 0x169539c1 )
  TEST_RR_OP( 8, pv.sub.sc.b, 0x76b1bec0, 0xade8f5f7, 0x36e22937 )
  TEST_RR_OP( 9, pv.sub.sc.b, 0xda72cc63, 0x3fd731c8, 0x963ceb65 )
  TEST_RR_OP( 10, pv.sub.sc.b, 0x08da2b1e, 0xf3c51609, 0x45cd86eb )
  TEST_RR_OP( 11, pv.sub.sc.b, 0x69739b44, 0x929cc46d, 0x7122e929 )
  TEST_RR_OP( 12, pv.sub.sc.b, 0xe05ae818, 0x86008ebe, 0x9856cea6 )
  TEST_RR_OP( 13, pv.sub.sc.b, 0x35053c62, 0x6d3d749a, 0x6c01eb38 )
  TEST_RR_OP( 14, pv.sub.sc.b, 0x8c9c98cb, 0xe0f0ec1f, 0xb06db354 )
  TEST_RR_OP( 15, pv.sub.sc.b, 0xb967c083, 0x27d52ef1, 0x1ebd476e )
  TEST_RR_OP( 16, pv.sub.sc.b, 0xa6dab0b6, 0x9dd1a7ad, 0xe1da81f7 )
  TEST_RR_OP( 17, pv.sub.sc.b, 0x34ed8d0f, 0xba731395, 0xf0905c86 )
  TEST_RR_OP( 18, pv.sub.sc.b, 0xaf40ff46, 0x25b675bc, 0x8c777c76 )
  TEST_RR_OP( 19, pv.sub.sc.b, 0x86088972, 0xdb5ddec7, 0x79edd255 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sub.sc.b, 0xa4ee493b, 0x2771ccbe, 0x12a1a583 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sub.sc.b, 0xfc572eb9, 0xb712e974, 0xa75ab6bb )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sub.sc.b, 0x361f90aa, 0x16ff708a, 0xa1e2bfe0 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sub.sc.b, 0x76a9bb7a, 0x6a9daf6e, 0xb1ee0df4 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sub.sc.b, 0xd6467000, 0x53c3ed7d )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sub.sc.b, 0x3681a400, 0xcc173a96 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sub.sc.b, 0x80b1cb00, 0x5687a1d6, 0x5687a1d6 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sub.sc.b, 0x63da6e00, 0x8a019527, 0x8a019527 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sub.sc.b, 0xa3a0cf00, 0x7f7cabdc, 0x7f7cabdc )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sub.sc.b, 0x10693500, 0xec4511dc, 0xec4511dc )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sub.sc.b, 0xebe08c00, 0xb1a652c6, 0xb1a652c6 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sub.sc.b, 0xacfe5a00, 0xa6f854fa, 0xa6f854fa )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sub.sc.b, 0x899d94ed, 0x5c7067c0, 0x03b039d3 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sub.sc.b, 0x9c9ea908, 0x12141f7e, 0x3e9b3676 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sub.sc.b, 0xcc7afa78, 0x4bf979f7, 0x6680007f )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sub.sc.b, 0x8734982c, 0x41ee52e6, 0x23b0ccba )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sub.sc.b, 0x0501afe5, 0xf3ef9dd3, 0x4198b8ee )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sub.sc.b, 0x31c3be3b, 0x46d8d350, 0x10e90915 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sub.sc.b, 0xa9eef64c, 0xd2171f75, 0xa7723229 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sub.sc.b, 0x3dcff602, 0x5aec131f, 0xf04bc21d )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sub.sc.b, 0x662acedd, 0xa76b0f1e, 0x94a24a41 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sub.sc.b, 0x2c773737, 0x7cc78787, 0x82b14450 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sub.sc.b, 0x0fee44b0, 0xd9b80e7a, 0xf4b11cca )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sub.sc.b, 0x83d03dc3, 0x49960389, 0x9d9bc2c6 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sub.sc.b, 0xf074a639, 0x179bcd60, 0x1c05a027 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sub.sc.b, 0x1829caed, 0xc2d37497, 0x825781aa )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sub.sc.b, 0xcf150897, 0x65ab9e2d, 0x901b3196 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sub.sc.b, 0xfa644462, 0x3ea888a6, 0xf7edf444 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sub.sc.b, 0xbaef22ef, 0xe71c4f1c, 0xda43c62d )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sub.sc.b, 0xc30de93e, 0x85cfab00, 0x5e4b8ec2 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sub.sc.b, 0x1c1c1c1c, 0x7fb0dbe4 )
  TEST_RR_ZEROSRC1( 51, pv.sub.sc.b, 0xe9e9e9e9, 0x85ba9817 )
  
  TEST_RR_ZEROSRC2( 52, pv.sub.sc.b, 0x51d1e516, 0x51d1e516 )
  TEST_RR_ZEROSRC2( 53, pv.sub.sc.b, 0xc2e89c51, 0xc2e89c51 )
  
  TEST_RR_ZEROSRC12( 54, pv.sub.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sub.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sub.sc.b, 0xe47bd2d4, 0x96ff4635 )
  TEST_RR_ZERODEST( 57, pv.sub.sc.b, 0x0a469a3e, 0x8144e450 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
