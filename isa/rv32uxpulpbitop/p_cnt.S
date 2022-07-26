# See LICENSE for license details.

#*****************************************************************************
# p_cnt.S
#-----------------------------------------------------------------------------
#
# Test p.cnt instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_R_OP( 2, p.cnt, 0, 0x00000000 )  // none set
  TEST_R_OP( 3, p.cnt, 32, 0xffffffff ) // all set
  
  TEST_R_OP( 4, p.cnt, 1, 0x00000001 )  // LSB set
  TEST_R_OP( 5, p.cnt, 1, 0x80000000 )  // MSB set
  
  // random numbers
  TEST_R_OP( 6, p.cnt, 19, 0xE18F379E )
  TEST_R_OP( 7, p.cnt, 11, 0x854A03D )
  TEST_R_OP( 8, p.cnt, 18, 0x5FC218F7 )
  TEST_R_OP( 9, p.cnt, 8, 0x5114412 )
  TEST_R_OP( 10, p.cnt, 24, 0xF2FBB7FA )

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

  TEST_R_SRC1_EQ_DEST( 11, p.cnt, 12, 0x2F1014E4 )

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

  TEST_R_DEST_BYPASS( 12, 0, p.cnt, 16, 0x33324AAF )
  TEST_R_DEST_BYPASS( 13, 1, p.cnt, 13, 0xC8543872 )
  TEST_R_DEST_BYPASS( 14, 2, p.cnt, 19, 0xF7F3A849 )

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
