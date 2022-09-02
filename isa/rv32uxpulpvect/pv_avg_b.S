# See LICENSE for license details.

#*****************************************************************************
# pv.avg.b
#-----------------------------------------------------------------------------
#
# Test pv.avg.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avg.b, 0xfdfcfbfa, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avg.b, 0x02030406, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.avg.b, 0x3b3b3b3b, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.avg.b, 0xce3b0806, 0x27882484, 0x75eeec88 )
  TEST_RR_OP( 6, pv.avg.b, 0x1a3a0731, 0xd8d1c36e, 0x5ca44cf4 )
  TEST_RR_OP( 7, pv.avg.b, 0xcdcad0d1, 0xbc1a3ead, 0xde7a62f5 )
  TEST_RR_OP( 8, pv.avg.b, 0xdf30c9c1, 0xb3b086c3, 0x0cb10dbf )
  TEST_RR_OP( 9, pv.avg.b, 0xd0e917f0, 0x4e8f50f1, 0x5343dfef )
  TEST_RR_OP( 10, pv.avg.b, 0x16e0d807, 0x34828c00, 0xf83e240e )
  TEST_RR_OP( 11, pv.avg.b, 0xf8f60b09, 0xc4fdbb00, 0x2df05b12 )
  TEST_RR_OP( 12, pv.avg.b, 0xd5cc0a00, 0x0b3bbe98, 0x9f5e5668 )
  TEST_RR_OP( 13, pv.avg.b, 0x2f1c252c, 0xf51b6d68, 0x6a1edef1 )
  TEST_RR_OP( 14, pv.avg.b, 0xc93bc8e7, 0xd26e0693, 0xc0098b3c )
  TEST_RR_OP( 15, pv.avg.b, 0xf7291730, 0xc3c43e9a, 0x2c8ef0c7 )
  TEST_RR_OP( 16, pv.avg.b, 0x1d3bd3e5, 0x070283d7, 0x337423f3 )
  TEST_RR_OP( 17, pv.avg.b, 0x3edc0bf0, 0xfad8c546, 0x82e1519b )
  TEST_RR_OP( 18, pv.avg.b, 0x00300731, 0x1cd31fbb, 0xe48df0a8 )
  TEST_RR_OP( 19, pv.avg.b, 0xcd2719fc, 0x2c70d9a3, 0x6fde5a55 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.avg.b, 0xe5f82134, 0x62207233, 0x69d0d135 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.avg.b, 0xeb2dc100, 0x33ec0de7, 0xa36f7519 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.avg.b, 0xd5d6c9dc, 0x85bb8eb3, 0x26f20405 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.avg.b, 0x23df19fb, 0x78c02715, 0xcefe0ce2 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.avg.b, 0xf909f1f8, 0x7909f1f8 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.avg.b, 0x0c1ddcea, 0x0c9d5c6a )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.avg.b, 0x21e43d2d, 0xa1e43d2d, 0xa1e43d2d )
  TEST_RR_DEST_BYPASS( 45, 1, pv.avg.b, 0xc9f5f91c, 0xc9f5f91c, 0xc9f5f91c )
  TEST_RR_DEST_BYPASS( 46, 2, pv.avg.b, 0xd31ef2c3, 0xd31ef2c3, 0xd31ef2c3 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.avg.b, 0x253d3b05, 0x25bdbb05, 0x25bdbb05 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.avg.b, 0xd7180af8, 0x57980a78, 0x57980a78 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.avg.b, 0xdbdb113b, 0xdbdb11bb, 0xdbdb11bb )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.avg.b, 0x23dcfb3c, 0x34e2458d, 0x13d6b2eb )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.avg.b, 0x1325c7df, 0x5cd9cddf, 0xcb72c1e0 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.avg.b, 0x29dc1801, 0xd4cd2566, 0x7eec0b9d )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.avg.b, 0xf31ccecb, 0x1d9e9ba5, 0xca9b02f2 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.avg.b, 0xe414ec17, 0x2c8f136c, 0x9c9ac6c3 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.avg.b, 0xe732ca1a, 0xaaa1ee86, 0x25c3a6af )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.avg.b, 0x0e07f8cb, 0xc8ad4648, 0x5561ab4f )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.avg.b, 0x152bfa00, 0x2fb99507, 0xfc9e60fa )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.avg.b, 0x04d00609, 0xb144b885, 0x575c548d )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.avg.b, 0xd0063506, 0x24a38edc, 0x7c6adc30 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.avg.b, 0x3021d5fe, 0xc59d0af3, 0x9ca6a00a )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.avg.b, 0xed01c30d, 0x949f563c, 0x476430de )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.avg.b, 0x22ef1ae4, 0xb33be638, 0x91a34e91 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.avg.b, 0x3fcc1ad4, 0x08e7e522, 0x77b24f87 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.avg.b, 0xd816fa38, 0x117c3bf2, 0xa0b1ba7f )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.avg.b, 0x192af2d1, 0x64049a12, 0xcf514b90 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.avg.b, 0x10340ffe, 0xa48f8d95, 0x7dd99267 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.avg.b, 0x01ed153f, 0x690bb76d, 0x99d07412 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.avg.b, 0xe41d0a38, 0xc83b1471 )
  TEST_RR_ZEROSRC1( 51, pv.avg.b, 0xd2f414ca, 0xa4e92894 )
  
  TEST_RR_ZEROSRC2( 52, pv.avg.b, 0x3ae7d6db, 0x75ceacb7 )
  TEST_RR_ZEROSRC2( 53, pv.avg.b, 0x30e816ff, 0x61d02dff )
  
  TEST_RR_ZEROSRC12( 54, pv.avg.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.avg.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.avg.b, 0x011cb952, 0x67ba03ad )
  TEST_RR_ZERODEST( 57, pv.avg.b, 0xfc8ed8c0, 0x856699ab )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
