# See LICENSE for license details.

#*****************************************************************************
# pv.sra.b
#-----------------------------------------------------------------------------
#
# Test pv.sra.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sra.b, 0x10000000, 0x40000000, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sra.b, 0xe0000000, 0x80000000, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sra.b, 0x10000000, 0x40000000, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sra.b, 0x06fa06e0, 0x33fa6ee0, 0x53707ca0 )
  TEST_RR_OP( 6, pv.sra.b, 0xfb0814d1, 0xbc2150a3, 0x54b28ae9 )
  TEST_RR_OP( 7, pv.sra.b, 0x00ff0026, 0x0ee8504c, 0xc6c73701 )
  TEST_RR_OP( 8, pv.sra.b, 0x1b71d1fe, 0x6e71a3d7, 0xd25089c5 )
  TEST_RR_OP( 9, pv.sra.b, 0xf9022b01, 0xe6275737, 0x72fce9cd )
  TEST_RR_OP( 10, pv.sra.b, 0x03d4fa16, 0x63a9f559, 0xbde14962 )
  TEST_RR_OP( 11, pv.sra.b, 0x01010001, 0x3b2b6932, 0xf56d0785 )
  TEST_RR_OP( 12, pv.sra.b, 0xe5eaffcc, 0x96abea98, 0x0a7a9531 )
  TEST_RR_OP( 13, pv.sra.b, 0x030501ff, 0x642a5ec4, 0x25b3be8e )
  TEST_RR_OP( 14, pv.sra.b, 0x00020342, 0x4d027c42, 0x37a09530 )
  TEST_RR_OP( 15, pv.sra.b, 0xff4522eb, 0xd64544d6, 0xb640d131 )
  TEST_RR_OP( 16, pv.sra.b, 0x2dfff400, 0x5acba23b, 0x21c63bfe )
  TEST_RR_OP( 17, pv.sra.b, 0xfceb8587, 0x9eac8587, 0x659a2890 )
  TEST_RR_OP( 18, pv.sra.b, 0x54fcffff, 0x54e28df8, 0x508baf8d )
  TEST_RR_OP( 19, pv.sra.b, 0xfcda0d00, 0xe4b50d1b, 0x8b2198b6 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sra.b, 0x07f00f0e, 0x7de17a38, 0xa4e97b42 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sra.b, 0x5affe100, 0x5aed8606, 0xc83e7215 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sra.b, 0x231b03ab, 0x473703ab, 0x3901b8d0 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sra.b, 0xcdf8ff00, 0xcdf0bf56, 0x40913f77 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sra.b, 0xff000509, 0x8f672b4b )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sra.b, 0x0d000601, 0x6b161a66 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sra.b, 0xfc030130, 0xc46d3530, 0xc46d3530 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sra.b, 0x03d86000, 0x6dd86067, 0x6dd86067 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sra.b, 0xf7280007, 0xbb511f74, 0xbb511f74 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sra.b, 0x0cfeff03, 0x6386f43c, 0x6386f43c )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sra.b, 0x08b024fc, 0x43b049c4, 0x43b049c4 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sra.b, 0x120103fe, 0x4a661b96, 0x4a661b96 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sra.b, 0xaa02fffb, 0xaa54cbd9, 0xe8d556f3 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sra.b, 0x0602fd11, 0x6514a011, 0x4c43cd00 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sra.b, 0x53004f01, 0x533f4f50, 0xc85710ee )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sra.b, 0x003600d6, 0x2f3606ac, 0x26c89459 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sra.b, 0x00043b02, 0x4d48772b, 0x2fdc616c )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sra.b, 0x0000f7f5, 0x770eb9d5, 0x173ee362 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sra.b, 0x0006661a, 0x0236661a, 0x6cfbf098 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sra.b, 0x0d00f801, 0x0d2ec777, 0xa87f134e )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sra.b, 0x3805feff, 0x382bbfb8, 0x60c3b64f )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sra.b, 0xfd03fc76, 0xee07c976, 0x1bf1c488 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sra.b, 0xff2cf5f3, 0xc02cade7, 0x6f581bd1 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sra.b, 0xcaff000d, 0x95d02d34, 0xc1aeeea2 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sra.b, 0x00c2fffd, 0x5f84c9ef, 0xb731ce43 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sra.b, 0xff7c001b, 0xb47c2e6f, 0x87f8466a )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sra.b, 0xfd1dfffe, 0xd477a791, 0x7c524f86 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sra.b, 0xeaff0101, 0xabe35363, 0xf2552636 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sra.b, 0xfe052c07, 0xd40b5970, 0x9551b9e4 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sra.b, 0x3bf10f3d, 0x76e30f7b, 0x49810081 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sra.b, 0x00000000, 0x466b0285 )
  TEST_RR_ZEROSRC1( 51, pv.sra.b, 0x00000000, 0xafece712 )
  
  TEST_RR_ZEROSRC2( 52, pv.sra.b, 0xcc839516, 0xcc839516 )
  TEST_RR_ZEROSRC2( 53, pv.sra.b, 0xa44a3dc4, 0xa44a3dc4 )
  
  TEST_RR_ZEROSRC12( 54, pv.sra.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sra.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sra.b, 0xa10e9135, 0x03b93474 )
  TEST_RR_ZERODEST( 57, pv.sra.b, 0x3ddc28c8, 0x9f2d24fa )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
