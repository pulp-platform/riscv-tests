# See LICENSE for license details.

#*****************************************************************************
# hwloop.S
#-----------------------------------------------------------------------------
#
# Test hardware loops extension.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

# Example from docs
test_2:	li a0, 0;
		li a1, 0;
		lp.counti x1, 10; 	// 10x outer
		lp.endi x1, endOut2;
		lp.starti x1, topOut2;
topOut2:lp.counti x0, 10;	// per outer, 10x inner
			lp.endi x0, endInn2;
			lp.starti x0, topInn2;
topInn2: 		addi a0, a0, 1 // body >= 3 instr
				addi a0, a0, 1
endInn2:		addi a0, a0, 1
		addi a1, a1, 2		// end to end distance >= 8 byte
endOut2:addi a1, a1, 2
		li  TESTNUM, 2; \
		li  x7, 300; \
    	bne a0, x7, fail;
		li  x7, 40; \
    	bne a1, x7, fail;
    	
# Test lp.setup
test_3:	li a0, 0;
		li a1, 0;
		li a3, 10;			// 10x outer
		lp.setup x1, a3, endOut3;
topOut3:	lp.counti x0, 10;	// per outer, 10x inner
			lp.endi x0, endInn3;
			lp.starti x0, topInn3;
topInn3: 		addi a0, a0, 1 // body >= 3 instr
				addi a0, a0, 1
endInn3:		addi a0, a0, 1
		addi a1, a1, 2		// end to end distance >= 8 byte
endOut3:addi a1, a1, 2
		li  TESTNUM, 3; \
		li  x7, 300; \
    	bne a0, x7, fail;
		li  x7, 40; \
    	bne a1, x7, fail;
    	
# Test lp.setupi
test_4:	li a0, 0;
		li a1, 0;
		li a3, 10;			// 10x outer
		lp.setup x1, a3, endOut4;
topOut4:	lp.setupi x0, 10, endInn4;// per outer, 10x inner
topInn4: 		addi a0, a0, 1 	// body >= 3 instr
				addi a0, a0, 1
endInn4:		addi a0, a0, 1
		addi a1, a1, 2		// end to end distance >= 8 byte
endOut4:addi a1, a1, 2
		li  TESTNUM, 4; \
		li  x7, 300; \
    	bne a0, x7, fail;
		li  x7, 40; \
    	bne a1, x7, fail;
    	
  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
