# See LICENSE for license details.

#*****************************************************************************
# pv.avg.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.avg.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.avg.sci.b, 0xcfcececd, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.avg.sci.b, 0x30303132, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.avg.sci.b, 0x08101921, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.avg.sci.b, 0xf5371cc1, 0xcf521d67, 0x01c )
  TEST_SIMM6_OP( 6, pv.avg.sci.b, 0xed1af53d, 0xdf39ee7e, 0xfffffffc )
  TEST_SIMM6_OP( 7, pv.avg.sci.b, 0x3e18f10c, 0x6619cb01, 0x017 )
  TEST_SIMM6_OP( 8, pv.avg.sci.b, 0x02281820, 0xf13e1e2d, 0x013 )
  TEST_SIMM6_OP( 9, pv.avg.sci.b, 0xe916c6ff, 0xb40e6edf, 0x01f )
  TEST_SIMM6_OP( 10, pv.avg.sci.b, 0x07040f39, 0x0f091f73, 0x000 )
  TEST_SIMM6_OP( 11, pv.avg.sci.b, 0x03220e2a, 0x013e164e, 0x006 )
  TEST_SIMM6_OP( 12, pv.avg.sci.b, 0xfcf2f9fc, 0x02edfc01, 0xfffffff7 )
  TEST_SIMM6_OP( 13, pv.avg.sci.b, 0xcf12e909, 0x8d14c201, 0x011 )
  TEST_SIMM6_OP( 14, pv.avg.sci.b, 0x280513f4, 0x37f00cce, 0x01a )
  TEST_SIMM6_OP( 15, pv.avg.sci.b, 0x03eadcc2, 0xefbea16e, 0x017 )
  TEST_SIMM6_OP( 16, pv.avg.sci.b, 0x27041dcd, 0x38f12384, 0x017 )
  TEST_SIMM6_OP( 17, pv.avg.sci.b, 0x0d03330c, 0x03ef4e01, 0x018 )
  TEST_SIMM6_OP( 18, pv.avg.sci.b, 0xe1e73f16, 0xadb96817, 0x016 )
  TEST_SIMM6_OP( 19, pv.avg.sci.b, 0x261b3426, 0x66508265, 0xffffffe7 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.avg.sci.b, 0x05d30a06, 0xf38ffdf6, 0x017 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.avg.sci.b, 0x2d150d1e, 0x72433355, 0xffffffe8 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.avg.sci.b, 0xcade170f, 0xa9d04332, 0xffffffec )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.avg.sci.b, 0x3b380ff6, 0x655f0ddc, 0x011 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.avg.sci.b, 0x0fce3100, 0x159358f6, 0x00a )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.avg.sci.b, 0xc016f9e9, 0x610dd4b4, 0x01f )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.avg.sci.b, 0xcdeb19c6, 0x9eda3791, 0xfffffffc )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.avg.sci.b, 0xebfbc4fa, 0xf312a411, 0xffffffe4 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.avg.sci.b, 0xe41a35cc, 0xd13c72a1, 0xfffffff8 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.avg.sci.b, 0xef1e0b1b, 0xce2d0627, 0x010 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.avg.sci.b, 0xd4f718fc, 0xb4fa3c05, 0xfffffff4 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.avg.sci.b, 0x1af1c2f5, 0x23d073d9, 0x012 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.avg.sci.b, 0x19c406e6, 0x499f22e2, 0xffffffea )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.avg.sci.b, 0x14dc00f0, 0x1dadf4d4, 0x00c )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.avg.sci.b, 0x07070707, 0x00e )
  TEST_SIMM6_ZEROSRC1( 35, pv.avg.sci.b, 0x00000000, 0x001 )
  
  TEST_SIMM6_ZERODEST( 36, pv.avg.sci.b, 0x20cee3e1, 0x007 )
  TEST_SIMM6_ZERODEST( 37, pv.avg.sci.b, 0xcd065bd1, 0x008 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
