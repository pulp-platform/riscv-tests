# See LICENSE for license details.

#*****************************************************************************
# <mnemonic>
#-----------------------------------------------------------------------------
#
# Test <mnemonic> instruction.
# <descr>
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  <arith-tests>

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  <src-dest-tests>

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  <bypass-tests>

  <zero-reg-tests>

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
