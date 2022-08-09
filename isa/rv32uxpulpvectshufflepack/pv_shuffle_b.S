# See LICENSE for license details.

#*****************************************************************************
# pv.shuffle.b
#-----------------------------------------------------------------------------
#
# Test pv.shuffle.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.shuffle.b, 0x11111111, 0x44332211, 0x00000000 )
  TEST_RR_OP( 3, pv.shuffle.b, 0x11111122, 0x44332211, 0x00000001 )
  TEST_RR_OP( 4, pv.shuffle.b, 0x11111133, 0x44332211, 0x00000002 )
  TEST_RR_OP( 5, pv.shuffle.b, 0x11111144, 0x44332211, 0x00000003 )
  TEST_RR_OP( 6, pv.shuffle.b, 0x11112211, 0x44332211, 0x00000100 )
  TEST_RR_OP( 7, pv.shuffle.b, 0x11113311, 0x44332211, 0x00000200 )
  TEST_RR_OP( 8, pv.shuffle.b, 0x11114411, 0x44332211, 0x00000300 )
  TEST_RR_OP( 9, pv.shuffle.b, 0x11221111, 0x44332211, 0x00010000 )
  TEST_RR_OP( 10, pv.shuffle.b, 0x11331111, 0x44332211, 0x00020000 )
  TEST_RR_OP( 11, pv.shuffle.b, 0x11441111, 0x44332211, 0x00030000 )
  TEST_RR_OP( 12, pv.shuffle.b, 0x22111111, 0x44332211, 0x01000000 )
  TEST_RR_OP( 13, pv.shuffle.b, 0x33111111, 0x44332211, 0x02000000 )
  TEST_RR_OP( 14, pv.shuffle.b, 0x44111111, 0x44332211, 0x03000000 )
  TEST_RR_OP( 15, pv.shuffle.b, 0xe1e180e0, 0x80bfe1e0, 0x95c1e3b4 )
  TEST_RR_OP( 16, pv.shuffle.b, 0x95393944, 0x07449539, 0xdd3458b2 )
  TEST_RR_OP( 17, pv.shuffle.b, 0x4e064e7e, 0x517e064e, 0x806500ce )
  TEST_RR_OP( 18, pv.shuffle.b, 0xce94ce3c, 0x2c943cce, 0x4c56d489 )
  TEST_RR_OP( 19, pv.shuffle.b, 0x2f7d7d2e, 0x2e7d2f93, 0x2d52bac3 )
  TEST_RR_OP( 20, pv.shuffle.b, 0x8f8f8f50, 0x50078fbe, 0x81050d7f )
  TEST_RR_OP( 21, pv.shuffle.b, 0xfc05cb05, 0x7505cbfc, 0x843acd32 )
  TEST_RR_OP( 22, pv.shuffle.b, 0x763bef3b, 0x76ef3b79, 0x47295edd )
  TEST_RR_OP( 23, pv.shuffle.b, 0xff9dffa9, 0x8d9dffa9, 0x79fe65cc )
  TEST_RR_OP( 24, pv.shuffle.b, 0x70707070, 0xeaa8dc70, 0x8c2ce04c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 25, pv.shuffle.b, 0xda1e3616, 0x1e3616da, 0x349b9e35 )
  TEST_RR_SRC1_EQ_DEST( 26, pv.shuffle.b, 0xa64ca61e, 0xa65f1e4c, 0xfb0cf7e9 )
  
  TEST_RR_SRC2_EQ_DEST( 27, pv.shuffle.b, 0x537ac153, 0x53c1e07a, 0xab707a17 )
  TEST_RR_SRC2_EQ_DEST( 28, pv.shuffle.b, 0xba27d1d2, 0xd1bad227, 0x32205b05 )
  
  TEST_RR_SRC12_EQ_DEST( 29, pv.shuffle.b, 0xd154adad, 0x54b3add1 )
  TEST_RR_SRC12_EQ_DEST( 30, pv.shuffle.b, 0x10884a88, 0x4a10c788 )
  
  TEST_RR_DEST_BYPASS( 49, 0, pv.shuffle.b, 0x23b623b6, 0x23b69746, 0x23b69746 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.shuffle.b, 0x72c62525, 0xb025c672, 0xb025c672 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.shuffle.b, 0x434b434b, 0x43114b9d, 0x43114b9d )
  TEST_RR_DEST_BYPASS( 52, 0, pv.shuffle.b, 0x59d259ec, 0x14d2ec59, 0x14d2ec59 )
  TEST_RR_DEST_BYPASS( 53, 1, pv.shuffle.b, 0x65ea65ea, 0x3a65ea55, 0x3a65ea55 )
  TEST_RR_DEST_BYPASS( 54, 2, pv.shuffle.b, 0x8c8cee45, 0xdd458cee, 0xdd458cee )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 31, 0, 0, pv.shuffle.b, 0xf6f62121, 0xf6a40321, 0x975f98f8 )
  TEST_RR_SRC12_BYPASS( 32, 0, 1, pv.shuffle.b, 0xa1a178a1, 0x78c6a1af, 0xf9cdefed )
  TEST_RR_SRC12_BYPASS( 33, 0, 2, pv.shuffle.b, 0x261e2626, 0x89261e24, 0xaadd025e )
  TEST_RR_SRC12_BYPASS( 34, 1, 0, pv.shuffle.b, 0xda511eda, 0x511efada, 0xc86352c8 )
  TEST_RR_SRC12_BYPASS( 35, 1, 1, pv.shuffle.b, 0x88888288, 0x888882de, 0x87e6196a )
  TEST_RR_SRC12_BYPASS( 36, 1, 2, pv.shuffle.b, 0xf1f18181, 0xa8f18148, 0x2a02d5c9 )
  TEST_RR_SRC12_BYPASS( 37, 2, 0, pv.shuffle.b, 0xa3a3c588, 0xa3c588f5, 0x1b2b0a81 )
  TEST_RR_SRC12_BYPASS( 38, 2, 1, pv.shuffle.b, 0xc122c151, 0xc15122f1, 0x5fe1aff6 )
  TEST_RR_SRC12_BYPASS( 39, 2, 2, pv.shuffle.b, 0xf7f756f7, 0xa99f56f7, 0xfc38058c )
  TEST_RR_SRC12_BYPASS( 40, 0, 0, pv.shuffle.b, 0x2a988888, 0xbb882a98, 0x95040e62 )
  TEST_RR_SRC12_BYPASS( 41, 0, 1, pv.shuffle.b, 0x6c6c26db, 0x266cdb91, 0xdac63359 )
  TEST_RR_SRC12_BYPASS( 42, 0, 2, pv.shuffle.b, 0x55b129dd, 0xb1dd5529, 0xd1973486 )
  TEST_RR_SRC12_BYPASS( 43, 1, 0, pv.shuffle.b, 0x51626251, 0xcb51ae62, 0xe2446866 )
  TEST_RR_SRC12_BYPASS( 44, 1, 1, pv.shuffle.b, 0x78bc3cbc, 0x780c3cbc, 0x07f4d574 )
  TEST_RR_SRC12_BYPASS( 45, 1, 2, pv.shuffle.b, 0xa5f12ca5, 0x2c45a5f1, 0x65b45bc9 )
  TEST_RR_SRC12_BYPASS( 46, 2, 0, pv.shuffle.b, 0x20d057d0, 0xd0572042, 0xf1033ab7 )
  TEST_RR_SRC12_BYPASS( 47, 2, 1, pv.shuffle.b, 0xc5f4acf4, 0xf4acc5ba, 0x6d73bab3 )
  TEST_RR_SRC12_BYPASS( 48, 2, 2, pv.shuffle.b, 0x10dcdcdc, 0xc7dddc10, 0x4885e57d )
  
  

  TEST_RR_ZEROSRC1( 55, pv.shuffle.b, 0x00000000, 0x8cdc08a9 )
  TEST_RR_ZEROSRC1( 56, pv.shuffle.b, 0x00000000, 0x0732fe3f )
  
  TEST_RR_ZEROSRC2( 57, pv.shuffle.b, 0x51515151, 0xd762b151 )
  TEST_RR_ZEROSRC2( 58, pv.shuffle.b, 0x79797979, 0xf2ac9e79 )
  
  TEST_RR_ZEROSRC12( 59, pv.shuffle.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 60, pv.shuffle.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 61, pv.shuffle.b, 0x61bcdc51, 0xa5db8a86 )
  TEST_RR_ZERODEST( 62, pv.shuffle.b, 0xcb5ebd99, 0x30b7e095 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
