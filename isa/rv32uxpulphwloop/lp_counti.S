# See LICENSE for license details.

#*****************************************************************************
# lp_counti.S
#-----------------------------------------------------------------------------
#
# Test lp.counti instruction.
#

#include "riscv_test.h"
#include "test_macros.h"
#include "../../env/encoding.h"

#-----------------------------------------------------------------------
# Test hw-loop write instructions with register operand
# These macros are very specific, which is why they are here
# instead of in test_macros.h
#-----------------------------------------------------------------------

#define TEST_LPCOUNTI_OP( testnum, value, csr, loop ) \
    TEST_CASE( testnum, x14, ZEXT_IMM(value), \
      lp.counti loop, ZEXT_IMM(value); \
      csrr x14, csr; \
    )

#define TEST_LPCOUNTI_DEST_BYPASS( testnum, nop_cycles, value, csr, loop ) \
    TEST_CASE( testnum, x14, ZEXT_IMM(value), \
      li  x4, 0; \
1:    li  x2, value; \
      lp.counti loop, ZEXT_IMM(value); \
      TEST_INSERT_NOPS_ ## nop_cycles \
      csrr x14, csr; \
      addi  x4, x4, 1; \
      li  x5, 2; \
      bne x4, x5, 1b \
    )

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Write to CSR tests
  #-------------------------------------------------------------

  TEST_LPCOUNTI_OP( 2, 0x00000001, CSR_LPCOUNT0, x0);
  TEST_LPCOUNTI_OP( 3, 0xffffffff, CSR_LPCOUNT0, x0);
  TEST_LPCOUNTI_OP( 4, 0x00000000, CSR_LPCOUNT0, x0);

  TEST_LPCOUNTI_OP( 5, 0x00000001, CSR_LPCOUNT1, x1);
  TEST_LPCOUNTI_OP( 6, 0xffffffff, CSR_LPCOUNT1, x1);
  TEST_LPCOUNTI_OP( 7, 0x00000000, CSR_LPCOUNT1, x1);
  
  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

  TEST_LPCOUNTI_DEST_BYPASS( 8, 0, 0x00000067, CSR_LPCOUNT0, x0);
  TEST_LPCOUNTI_DEST_BYPASS( 9, 1, 0x4C740267, CSR_LPCOUNT0, x0);
  TEST_LPCOUNTI_DEST_BYPASS( 10, 2, 0x8A874D83, CSR_LPCOUNT0, x0);

  TEST_LPCOUNTI_DEST_BYPASS( 11, 0, 0x00000067, CSR_LPCOUNT1, x1);
  TEST_LPCOUNTI_DEST_BYPASS( 12, 1, 0x4C740267, CSR_LPCOUNT1, x1);
  TEST_LPCOUNTI_DEST_BYPASS( 13, 2, 0x8A874D83, CSR_LPCOUNT1, x1);


  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
