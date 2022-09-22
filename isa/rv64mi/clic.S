# See LICENSE for license details.

#*****************************************************************************
# illegal.S
#-----------------------------------------------------------------------------
#
# Test illegal instruction trap.
#

#include "riscv_test.h"
#include "test_macros.h"

#define xstr(s) str(s)
#define str(s) s
#define CLIC_BASE 0xD0000000
#define CLIC_CLICCFG_REG         (CLIC_BASE + 0x0)
#define CLIC_CLICINTIP_REG(id)   (CLIC_BASE + 0x1000 + 0x10 * id)
#define CLIC_CLICINTIE_REG(id)   (CLIC_BASE + 0x1004 + 0x10 * id)
#define CLIC_CLICINTATTR_REG(id) (CLIC_BASE + 0x1008 + 0x10 * id)
#define CLIC_CLICINTCTL_REG(id)  (CLIC_BASE + 0x100c + 0x10 * id)

RVTEST_RV64M
RVTEST_CODE_BEGIN

  .align 2
  .option norvc

  li TESTNUM, 2
1:
  # Activate CLIC mode
  la t0, mtvec_handler
  ori t0, t0, 0x3
  csrrw s0, mtvec, t0

  # Write mtvt base
  la t0, mtvt_handler
  csrw 0x307, t0

  # Set shv of irq 31
  li   t0, CLIC_CLICINTATTR_REG(31)
  li   t1, 1
  sw   t1, 0(t0)

  # set trigger type to edge-triggered
  li   t0, CLIC_CLICINTATTR_REG(31)
  lw   t1, 0(t0)
  ori  t1, t1, 2
  sw   t1, 0(t0)

  # enable irq31 via SW by writing to clicintip31
  li   t0, CLIC_CLICINTIP_REG(31)
  li   t1, 1
  sb   t1, 0(t0)

  # set number of bits for level encoding
  li   t0, CLIC_CLICCFG_REG
  li   t1, 0x4 << 1
  sb   t1, 0(t0)

  # set interrupt level and priority for interrupt 31
  li   t0, CLIC_CLICINTCTL_REG(31)
  li   t1, 0xaa
  sw   t1, 0(t0)

  # raise interrupt threshold to max and check that the interrupt doesn't fire yet
  li   t0, 0xff
  csrw 0x347, t0
  li   t0, CLIC_CLICINTIE_REG(31)
  li   t1, 1
  sw   t1, 0(t0)

  j pass_restore

pass_restore:
  csrw mtvec, s0
  j pass

  TEST_PASSFAIL

  .align 6
  .global mtvt_handler
mtvt_handler:
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore
  j pass_restore


  .align 8
  .global mtvec_handler
mtvec_handler:
  # Restore mtvec and fail
  csrw mtvec, s0
  j fail

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
