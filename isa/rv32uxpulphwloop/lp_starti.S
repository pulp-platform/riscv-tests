# See LICENSE for license details.

#*****************************************************************************
# lp_starti.S
#-----------------------------------------------------------------------------
#
# Test lp.starti instruction.
#

#include "riscv_test.h"
#include "test_macros.h"
#include "../../env/encoding.h"

#-----------------------------------------------------------------------
# Test hw-loop write instructions with register operand
# These macros are very specific, which is why they are here
# instead of in test_macros.h
#-----------------------------------------------------------------------

# Compiler says 'value' must be even
# It compiles 'lp.endi x0, value' by using uimmL = value/2 instead
# Meaning it essentially 'compensates' for the left shift
# hence no 'slli x2, x2, 1' in macro
#define TEST_LPSTARTI_OP( testnum, value, csr, loop ) \
test_ ## testnum: \
      li x2, ZEXT_IMM(value); \
      la x4, 1f; \
      add x4, x4, x2; \
1:    lp.starti loop, ZEXT_IMM(value); \
      csrr x14, csr; \
      li  TESTNUM, testnum; \
      bne x14, x4, fail;

#define TEST_LPSTARTI_DEST_BYPASS( testnum, nop_cycles, value, csr, loop ) \
test_ ## testnum: \
      li x2, ZEXT_IMM(value); \
      la x4, 1f; \
      add x4, x4, x2; \
1:    lp.starti loop, ZEXT_IMM(value); \
      TEST_INSERT_NOPS_ ## nop_cycles \
      csrr x14, csr; \
      li  TESTNUM, testnum; \
      bne x14, x4, fail;

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Write to CSR tests
  #-------------------------------------------------------------

  TEST_LPSTARTI_OP( 2, 0x00000002, CSR_LPSTART0, x0);
  TEST_LPSTARTI_OP( 3, 0xFFFFFFFE, CSR_LPSTART0, x0);
  TEST_LPSTARTI_OP( 4, 0x00000000, CSR_LPSTART0, x0);

  TEST_LPSTARTI_OP( 5, 0x00000002, CSR_LPSTART1, x1);
  TEST_LPSTARTI_OP( 6, 0xFFFFFFFE, CSR_LPSTART1, x1);
  TEST_LPSTARTI_OP( 7, 0x00000000, CSR_LPSTART1, x1);
  
  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

  TEST_LPSTARTI_DEST_BYPASS( 8, 0, 0x00000064, CSR_LPSTART0, x0);
  TEST_LPSTARTI_DEST_BYPASS( 9, 1, 0x4C740266, CSR_LPSTART0, x0);
  TEST_LPSTARTI_DEST_BYPASS( 10, 2, 0x8A874D82, CSR_LPSTART0, x0);

  TEST_LPSTARTI_DEST_BYPASS( 11, 0, 0x00000064, CSR_LPSTART1, x1);
  TEST_LPSTARTI_DEST_BYPASS( 12, 1, 0x4C740266, CSR_LPSTART1, x1);
  TEST_LPSTARTI_DEST_BYPASS( 13, 2, 0x8A874D82, CSR_LPSTART1, x1);


  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
