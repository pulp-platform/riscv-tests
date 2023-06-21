# See LICENSE for license details.

#*****************************************************************************
# pv.abs.h
#-----------------------------------------------------------------------------
#
# Test pv.abs.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_R_OP( 2, pv.abs.h, 0x00000000, 0x00000000 )
  TEST_R_OP( 3, pv.abs.h, 0x00010001, 0xffffffff )
  TEST_R_OP( 4, pv.abs.h, 0x00000001, 0x00000001 )
  TEST_R_OP( 5, pv.abs.h, 0x80000000, 0x80000000 )
  TEST_R_OP( 6, pv.abs.h, 0x7fff0001, 0x7fffffff )
  TEST_R_OP( 7, pv.abs.h, 0x0e201d09, 0x0e20e2f7 )
  TEST_R_OP( 8, pv.abs.h, 0x0a3a3dd5, 0x0a3ac22b )
  TEST_R_OP( 9, pv.abs.h, 0x3e891391, 0xc1771391 )
  TEST_R_OP( 10, pv.abs.h, 0x67030875, 0x67030875 )
  TEST_R_OP( 11, pv.abs.h, 0x3086715f, 0x3086715f )
  TEST_R_OP( 12, pv.abs.h, 0x1aa80702, 0x1aa80702 )
  TEST_R_OP( 13, pv.abs.h, 0x61203820, 0x9ee03820 )
  TEST_R_OP( 14, pv.abs.h, 0x4f6b0778, 0x4f6bf888 )
  TEST_R_OP( 15, pv.abs.h, 0x7a5d4320, 0x85a3bce0 )
  TEST_R_OP( 16, pv.abs.h, 0x07f16f50, 0xf80f90b0 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_R_SRC1_EQ_DEST( 17, pv.abs.h, 0x576b5013, 0x576bafed )
  TEST_R_SRC1_EQ_DEST( 18, pv.abs.h, 0x4e456d3f, 0xb1bb92c1 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_R_DEST_BYPASS( 19, 0, pv.abs.h, 0x3a5f0913, 0xc5a10913 )
  TEST_R_DEST_BYPASS( 20, 1, pv.abs.h, 0x7eb81aa5, 0x81481aa5 )
  TEST_R_DEST_BYPASS( 21, 2, pv.abs.h, 0x675c5eaf, 0x98a45eaf )
  TEST_R_DEST_BYPASS( 22, 0, pv.abs.h, 0x4ac5650a, 0xb53b9af6 )
  TEST_R_DEST_BYPASS( 23, 1, pv.abs.h, 0x179c6695, 0xe8646695 )
  TEST_R_DEST_BYPASS( 24, 2, pv.abs.h, 0x69622f09, 0x969e2f09 )
  

  TEST_R_ZEROSRC1( 25, pv.abs.h, 0x00000000 )
  TEST_R_ZEROSRC1( 26, pv.abs.h, 0x00000000 )
  
  TEST_R_ZERODEST( 27, pv.abs.h, 0x2fb491ec )
  TEST_R_ZERODEST( 28, pv.abs.h, 0xa24efc84 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
