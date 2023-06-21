# See LICENSE for license details.

#*****************************************************************************
# pv.avg.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.avg.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avg.sc.b, 0xfbfbfafa, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avg.sc.b, 0x04040506, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.avg.sc.b, 0x222a333b, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.avg.sc.b, 0xf02a10e1, 0xd84c19ba, 0x3ac30e08 )
  TEST_RR_OP( 6, pv.avg.sc.b, 0x1df9fa01, 0xf8b0b3c1, 0xfe6a6042 )
  TEST_RR_OP( 7, pv.avg.sc.b, 0xc6ef3607, 0x4d9f2cce, 0xdafe8340 )
  TEST_RR_OP( 8, pv.avg.sc.b, 0x24fcd50c, 0xd88739a7, 0x82727f71 )
  TEST_RR_OP( 9, pv.avg.sc.b, 0xe70b1334, 0x5199a9eb, 0x38b47d7e )
  TEST_RR_OP( 10, pv.avg.sc.b, 0x15e41602, 0x7f1e8159, 0xa879ccab )
  TEST_RR_OP( 11, pv.avg.sc.b, 0xfc322010, 0xac19f5d4, 0xf3a2ec4c )
  TEST_RR_OP( 12, pv.avg.sc.b, 0x1ff3d6d5, 0x9e470c0b, 0xa58501a0 )
  TEST_RR_OP( 13, pv.avg.sc.b, 0x0d0f26eb, 0x575b8913, 0xdcfa9cc4 )
  TEST_RR_OP( 14, pv.avg.sc.b, 0x30d2d729, 0xbaff08ad, 0x9227a0a6 )
  TEST_RR_OP( 15, pv.avg.sc.b, 0x12e82432, 0x3be75f7b, 0x56fb27e9 )
  TEST_RR_OP( 16, pv.avg.sc.b, 0xf7dc00fb, 0x1ae52d22, 0x03cd72d4 )
  TEST_RR_OP( 17, pv.avg.sc.b, 0xe4ddc016, 0x9f905603, 0xe872b12a )
  TEST_RR_OP( 18, pv.avg.sc.b, 0xc834d50b, 0x683f81ed, 0x3ccb5a29 )
  TEST_RR_OP( 19, pv.avg.sc.b, 0xe3c62a00, 0xf4ba832f, 0x82f8f6d2 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.avg.sc.b, 0x2a1bca2a, 0x7e5fbd7d, 0xd8f43cd7 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.avg.sc.b, 0x1dc207e2, 0x1e68f2a8, 0xe3bc551d )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.avg.sc.b, 0x183716ec, 0xc401bf6c, 0x488bb16d )
  TEST_RR_SRC2_EQ_DEST( 23, pv.avg.sc.b, 0xf007e5ed, 0x16430010, 0xaf15dacb )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.avg.sc.b, 0x3112213f, 0xa36584bf )
  TEST_RR_SRC12_EQ_DEST( 25, pv.avg.sc.b, 0xce0df338, 0xe4622eb8 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.avg.sc.b, 0x26341cd4, 0xf915e454, 0xf915e454 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.avg.sc.b, 0x3303cd37, 0xb04fe3b7, 0xb04fe3b7 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.avg.sc.b, 0xe2cdd31f, 0x26fb079f, 0x26fb079f )
  TEST_RR_DEST_BYPASS( 47, 0, pv.avg.sc.b, 0xd50d3731, 0x7ae93e31, 0x7ae93e31 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.avg.sc.b, 0xcfe7020b, 0x94c3f90b, 0x94c3f90b )
  TEST_RR_DEST_BYPASS( 49, 2, pv.avg.sc.b, 0xdbf9150a, 0xade9200a, 0xade9200a )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.avg.sc.b, 0x04f4f1fb, 0x2f0f091d, 0xe0bb59d9 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.avg.sc.b, 0xefc5c1c2, 0x1cc7bfc1, 0xc589a1c3 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.avg.sc.b, 0x17cff8fe, 0xe252a4b0, 0xfd25c74d )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.avg.sc.b, 0xc8ce0ddc, 0xdce86705, 0xd26b2ab4 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.avg.sc.b, 0xfc12ebd7, 0x739f5028, 0x3390a186 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.avg.sc.b, 0x242a10e9, 0x2532fdaf, 0xbfe10d23 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.avg.sc.b, 0x29f9c720, 0xca6b07b8, 0x8181a288 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.avg.sc.b, 0xec00c112, 0x214acb6e, 0xbcce23b7 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.avg.sc.b, 0xdb2204ed, 0x8110d3a6, 0x02e92f35 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.avg.sc.b, 0x07c0d43c, 0xdf517949, 0xccba9a30 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.avg.sc.b, 0x01cce43b, 0x41d607b4, 0x0e2d73c2 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.avg.sc.b, 0x11d839ce, 0x21af709b, 0xe9839302 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.avg.sc.b, 0xf23f0fe6, 0xf08b2ad9, 0xf2eba8f4 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.avg.sc.b, 0xf5fd18c6, 0x122157b4, 0xcc01b6d9 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.avg.sc.b, 0x25e733d6, 0x03881f66, 0x1da8d947 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.avg.sc.b, 0x3b0d0913, 0x1cc0b7cb, 0x37a21f5b )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.avg.sc.b, 0x2dd438d0, 0x105d2556, 0x5b9fcf4b )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.avg.sc.b, 0xf4fa0217, 0x606b7ba6, 0xbcc26d89 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.avg.sc.b, 0x08080808, 0x0d140f10 )
  TEST_RR_ZEROSRC1( 51, pv.avg.sc.b, 0x0a0a0a0a, 0x0ee5c215 )
  
  TEST_RR_ZEROSRC2( 52, pv.avg.sc.b, 0x191823de, 0x323046bd )
  TEST_RR_ZEROSRC2( 53, pv.avg.sc.b, 0x29050adc, 0x530b14b8 )
  
  TEST_RR_ZEROSRC12( 54, pv.avg.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.avg.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.avg.sc.b, 0xa63c4679, 0x3d438621 )
  TEST_RR_ZERODEST( 57, pv.avg.sc.b, 0xd851fd03, 0x4d37e45c )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
