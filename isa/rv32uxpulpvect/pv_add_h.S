# See LICENSE for license details.

#*****************************************************************************
# pv.add.h
#-----------------------------------------------------------------------------
#
# Test pv.add.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.h, 0xfaf8f6f4, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.add.h, 0x0506090c, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.add.h, 0x77777777, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.add.h, 0xa05c89ee, 0xa506b40b, 0xfb56d5e3 )
  TEST_RR_OP( 6, pv.add.h, 0xaf443c9b, 0xa0946efb, 0x0eb0cda0 )
  TEST_RR_OP( 7, pv.add.h, 0x20c33f69, 0x75853705, 0xab3e0864 )
  TEST_RR_OP( 8, pv.add.h, 0xdb137358, 0x5fb1a084, 0x7b62d2d4 )
  TEST_RR_OP( 9, pv.add.h, 0x17be73b2, 0xdfdaad12, 0x37e4c6a0 )
  TEST_RR_OP( 10, pv.add.h, 0x2819e151, 0xbc816fbd, 0x6b987194 )
  TEST_RR_OP( 11, pv.add.h, 0x82554792, 0x96531a44, 0xec022d4e )
  TEST_RR_OP( 12, pv.add.h, 0xc4acda1b, 0x885c5e48, 0x3c507bd3 )
  TEST_RR_OP( 13, pv.add.h, 0x0fe86109, 0xc2ad61fa, 0x4d3bff0f )
  TEST_RR_OP( 14, pv.add.h, 0x59cccbf9, 0xbc83c39e, 0x9d49085b )
  TEST_RR_OP( 15, pv.add.h, 0xfa7204a6, 0xaff6bae2, 0x4a7c49c4 )
  TEST_RR_OP( 16, pv.add.h, 0xeb96a511, 0x42eaacfe, 0xa8acf813 )
  TEST_RR_OP( 17, pv.add.h, 0xea8cdeb6, 0x3f56b37d, 0xab362b39 )
  TEST_RR_OP( 18, pv.add.h, 0x1b66a853, 0x6034f66e, 0xbb32b1e5 )
  TEST_RR_OP( 19, pv.add.h, 0xfecc7c7d, 0xaad95d3f, 0x53f31f3e )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.add.h, 0x7d5c1cc1, 0xdf09f1f3, 0x9e532ace )
  TEST_RR_SRC1_EQ_DEST( 21, pv.add.h, 0x0d696bab, 0xb8dc2cb8, 0x548d3ef3 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.add.h, 0x413e4518, 0x254f0b17, 0x1bef3a01 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.add.h, 0x4003cc1b, 0x50fae906, 0xef09e315 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.add.h, 0x3cd445ae, 0x1e6a22d7 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.add.h, 0x17f82dce, 0x0bfc16e7 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.add.h, 0xf282d248, 0xf9416924, 0xf9416924 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.add.h, 0x3dea1100, 0x9ef58880, 0x9ef58880 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.add.h, 0xcfae1622, 0xe7d70b11, 0xe7d70b11 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.add.h, 0x02d88cf4, 0x016c467a, 0x016c467a )
  TEST_RR_DEST_BYPASS( 48, 1, pv.add.h, 0x46ac38e4, 0xa3561c72, 0xa3561c72 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.add.h, 0x705ac17a, 0xb82de0bd, 0xb82de0bd )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.add.h, 0x899a1de8, 0x93351609, 0xf66507df )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.add.h, 0xdc3fb82b, 0x2c7eb753, 0xafc100d8 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.add.h, 0x2bda8770, 0x65cca91e, 0xc60ede52 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.add.h, 0x1747c68f, 0x00969eff, 0x16b12790 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.add.h, 0xbb424657, 0x5ad29b10, 0x6070ab47 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.add.h, 0xeb689250, 0xd84e5b3e, 0x131a3712 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.add.h, 0x9202cceb, 0x3a826c86, 0x57806065 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.add.h, 0x23294ead, 0xc3236a33, 0x6006e47a )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.add.h, 0xc45c1ff2, 0x6ff70d7b, 0x54651277 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.add.h, 0x72c16ef1, 0x28b13658, 0x4a103899 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.add.h, 0xc75db3a0, 0x7b44a7f8, 0x4c190ba8 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.add.h, 0xd8380862, 0xb13ca7a5, 0x26fc60bd )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.add.h, 0x357090cb, 0x54209286, 0xe150fe45 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.add.h, 0x874332f6, 0xa3b7c390, 0xe38c6f66 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.add.h, 0xa7f16ad0, 0x9fd0dc36, 0x08218e9a )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.add.h, 0x0c0c5a94, 0xfa75eb9f, 0x11976ef5 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.add.h, 0x32489ec4, 0x9edbc482, 0x936dda42 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.add.h, 0x03875641, 0x60c658e4, 0xa2c1fd5d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.add.h, 0xe751364c, 0xe751364c )
  TEST_RR_ZEROSRC1( 51, pv.add.h, 0x9d36522b, 0x9d36522b )
  
  TEST_RR_ZEROSRC2( 52, pv.add.h, 0x63569d41, 0x63569d41 )
  TEST_RR_ZEROSRC2( 53, pv.add.h, 0x895ca3e2, 0x895ca3e2 )
  
  TEST_RR_ZEROSRC12( 54, pv.add.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.add.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.add.h, 0xa25c3634, 0x11942227 )
  TEST_RR_ZERODEST( 57, pv.add.h, 0x8750c08c, 0xf563171e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
