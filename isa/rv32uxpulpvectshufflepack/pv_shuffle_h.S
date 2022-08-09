# See LICENSE for license details.

#*****************************************************************************
# pv.shuffle.h
#-----------------------------------------------------------------------------
#
# Test pv.shuffle.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.shuffle.h, 0x22112211, 0x44332211, 0x00000000 )
  TEST_RR_OP( 3, pv.shuffle.h, 0x22114433, 0x44332211, 0x00000001 )
  TEST_RR_OP( 4, pv.shuffle.h, 0x44332211, 0x44332211, 0x00010000 )
  TEST_RR_OP( 5, pv.shuffle.h, 0x44334433, 0x44332211, 0x00010001 )
  TEST_RR_OP( 6, pv.shuffle.h, 0xd4330d31, 0xd4330d31, 0x91f51b84 )
  TEST_RR_OP( 7, pv.shuffle.h, 0x54a054a0, 0x847854a0, 0x09262d90 )
  TEST_RR_OP( 8, pv.shuffle.h, 0x057ef90a, 0xf90a057e, 0x67ca4a63 )
  TEST_RR_OP( 9, pv.shuffle.h, 0x30923092, 0x3092ab67, 0xc1f53d39 )
  TEST_RR_OP( 10, pv.shuffle.h, 0x3161bab4, 0x3161bab4, 0xb05176f6 )
  TEST_RR_OP( 11, pv.shuffle.h, 0x8c2a3fdd, 0x3fdd8c2a, 0x6c342b8f )
  TEST_RR_OP( 12, pv.shuffle.h, 0x3d24cad4, 0xcad43d24, 0xacd88423 )
  TEST_RR_OP( 13, pv.shuffle.h, 0xbca7480c, 0xbca7480c, 0x7763e52a )
  TEST_RR_OP( 14, pv.shuffle.h, 0xfdd9a085, 0xa085fdd9, 0x79a6424b )
  TEST_RR_OP( 15, pv.shuffle.h, 0x85f99e90, 0x85f99e90, 0x3b95ed8a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 16, pv.shuffle.h, 0x6b9d6b9d, 0x10446b9d, 0xfb5efb62 )
  TEST_RR_SRC1_EQ_DEST( 17, pv.shuffle.h, 0x7c7d14f5, 0x7c7d14f5, 0x43a5666a )
  
  TEST_RR_SRC2_EQ_DEST( 18, pv.shuffle.h, 0xfe8f2c90, 0x2c90fe8f, 0x7e4410f1 )
  TEST_RR_SRC2_EQ_DEST( 19, pv.shuffle.h, 0x16fd16fd, 0xb93916fd, 0x5ec4adcc )
  
  TEST_RR_SRC12_EQ_DEST( 20, pv.shuffle.h, 0xda1b04f8, 0xda1b04f8 )
  TEST_RR_SRC12_EQ_DEST( 21, pv.shuffle.h, 0xf535a7b6, 0xa7b6f535 )
  
  TEST_RR_DEST_BYPASS( 40, 0, pv.shuffle.h, 0x06b206b2, 0x378206b2, 0x378206b2 )
  TEST_RR_DEST_BYPASS( 41, 1, pv.shuffle.h, 0x8625ec5c, 0xec5c8625, 0xec5c8625 )
  TEST_RR_DEST_BYPASS( 42, 2, pv.shuffle.h, 0x68c97c0a, 0x68c97c0a, 0x68c97c0a )
  TEST_RR_DEST_BYPASS( 43, 0, pv.shuffle.h, 0x5663f9f8, 0xf9f85663, 0xf9f85663 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.shuffle.h, 0xcf7d36fa, 0x36facf7d, 0x36facf7d )
  TEST_RR_DEST_BYPASS( 45, 2, pv.shuffle.h, 0x5c745c74, 0xe3d85c74, 0xe3d85c74 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 22, 0, 0, pv.shuffle.h, 0xb202b202, 0xed8fb202, 0x0b5216e6 )
  TEST_RR_SRC12_BYPASS( 23, 0, 1, pv.shuffle.h, 0x4db6e153, 0x4db6e153, 0x29053552 )
  TEST_RR_SRC12_BYPASS( 24, 0, 2, pv.shuffle.h, 0x372ad952, 0xd952372a, 0xfb1217eb )
  TEST_RR_SRC12_BYPASS( 25, 1, 0, pv.shuffle.h, 0xdef4def4, 0xdef46033, 0xae47063d )
  TEST_RR_SRC12_BYPASS( 26, 1, 1, pv.shuffle.h, 0x172b564b, 0x172b564b, 0xeaa94be4 )
  TEST_RR_SRC12_BYPASS( 27, 1, 2, pv.shuffle.h, 0x4f9e5796, 0x4f9e5796, 0x4915ee28 )
  TEST_RR_SRC12_BYPASS( 28, 2, 0, pv.shuffle.h, 0x564e6e77, 0x6e77564e, 0xb78a408d )
  TEST_RR_SRC12_BYPASS( 29, 2, 1, pv.shuffle.h, 0xd13dd13d, 0x06c7d13d, 0xc0fe8d86 )
  TEST_RR_SRC12_BYPASS( 30, 2, 2, pv.shuffle.h, 0xfaa2d3b1, 0xfaa2d3b1, 0x39112b3c )
  TEST_RR_SRC12_BYPASS( 31, 0, 0, pv.shuffle.h, 0xa259b278, 0xb278a259, 0x79582847 )
  TEST_RR_SRC12_BYPASS( 32, 0, 1, pv.shuffle.h, 0x3d5b3d5b, 0x3d5b107f, 0xe3dd0ee5 )
  TEST_RR_SRC12_BYPASS( 33, 0, 2, pv.shuffle.h, 0x61302fc4, 0x61302fc4, 0x803ffb40 )
  TEST_RR_SRC12_BYPASS( 34, 1, 0, pv.shuffle.h, 0x963ad8d8, 0x963ad8d8, 0xcf997270 )
  TEST_RR_SRC12_BYPASS( 35, 1, 1, pv.shuffle.h, 0x90461798, 0x17989046, 0x7060660f )
  TEST_RR_SRC12_BYPASS( 36, 1, 2, pv.shuffle.h, 0x259f259f, 0x259f2e7d, 0x097b9d0d )
  TEST_RR_SRC12_BYPASS( 37, 2, 0, pv.shuffle.h, 0xc3c814e3, 0x14e3c3c8, 0xb35e0425 )
  TEST_RR_SRC12_BYPASS( 38, 2, 1, pv.shuffle.h, 0x02f602f6, 0x3d2d02f6, 0x9e4a6f50 )
  TEST_RR_SRC12_BYPASS( 39, 2, 2, pv.shuffle.h, 0x2b4f2b4f, 0x60702b4f, 0x39244422 )
  
  

  TEST_RR_ZEROSRC1( 46, pv.shuffle.h, 0x00000000, 0x937e30f8 )
  TEST_RR_ZEROSRC1( 47, pv.shuffle.h, 0x00000000, 0xb85356df )
  
  TEST_RR_ZEROSRC2( 48, pv.shuffle.h, 0xaa3aaa3a, 0x012daa3a )
  TEST_RR_ZEROSRC2( 49, pv.shuffle.h, 0x11011101, 0x910b1101 )
  
  TEST_RR_ZEROSRC12( 50, pv.shuffle.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 51, pv.shuffle.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 52, pv.shuffle.h, 0x96852f62, 0xb646927f )
  TEST_RR_ZERODEST( 53, pv.shuffle.h, 0x8157511b, 0x63f216f0 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
