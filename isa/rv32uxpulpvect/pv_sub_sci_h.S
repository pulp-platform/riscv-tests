# See LICENSE for license details.

#*****************************************************************************
# pv.sub.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.sub.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.sub.sci.h, 0x7f5f7d5d, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.sub.sci.h, 0x80a182a4, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.sub.sci.h, 0x00012223, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.sub.sci.h, 0x1eda0ff8, 0x1ede0ffc, 0x004 )
  TEST_SIMM6_OP( 6, pv.sub.sci.h, 0xcf78e9c1, 0xcf7fe9c8, 0x007 )
  TEST_SIMM6_OP( 7, pv.sub.sci.h, 0x6f790fff, 0x6f5a0fe0, 0xffffffe1 )
  TEST_SIMM6_OP( 8, pv.sub.sci.h, 0x539ca032, 0x5381a017, 0xffffffe5 )
  TEST_SIMM6_OP( 9, pv.sub.sci.h, 0x662a6594, 0x66196583, 0xffffffef )
  TEST_SIMM6_OP( 10, pv.sub.sci.h, 0x051c3bee, 0x05333c05, 0x017 )
  TEST_SIMM6_OP( 11, pv.sub.sci.h, 0xaa6157cb, 0xaa7357dd, 0x012 )
  TEST_SIMM6_OP( 12, pv.sub.sci.h, 0xb7bc7d2f, 0xb7b37d26, 0xfffffff7 )
  TEST_SIMM6_OP( 13, pv.sub.sci.h, 0x6e640554, 0x6e6f055f, 0x00b )
  TEST_SIMM6_OP( 14, pv.sub.sci.h, 0xacc945bf, 0xace045d6, 0x017 )
  TEST_SIMM6_OP( 15, pv.sub.sci.h, 0xaf44b292, 0xaf62b2b0, 0x01e )
  TEST_SIMM6_OP( 16, pv.sub.sci.h, 0x67bbf6f5, 0x67bbf6f5, 0x000 )
  TEST_SIMM6_OP( 17, pv.sub.sci.h, 0xebc30fb6, 0xebca0fbd, 0x007 )
  TEST_SIMM6_OP( 18, pv.sub.sci.h, 0x1d42a6c4, 0x1d61a6e3, 0x01f )
  TEST_SIMM6_OP( 19, pv.sub.sci.h, 0x729b804d, 0x72a08052, 0x005 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.sub.sci.h, 0x153e8f4a, 0x15498f55, 0x00b )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.sub.sci.h, 0x41319dae, 0x41359db2, 0x004 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.sub.sci.h, 0xb1796125, 0xb15a6106, 0xffffffe1 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.sub.sci.h, 0x40d99889, 0x40d89888, 0xffffffff )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.sub.sci.h, 0xfe9fe497, 0xfe9ee496, 0xffffffff )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.sub.sci.h, 0x7c0fae9d, 0x7c09ae97, 0xfffffffa )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.sub.sci.h, 0x60af7008, 0x60b5700e, 0x006 )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.sub.sci.h, 0xe262f422, 0xe273f433, 0x011 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.sub.sci.h, 0x9f0e4c27, 0x9f194c32, 0x00b )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.sub.sci.h, 0x59ca2bdd, 0x59c92bdc, 0xffffffff )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.sub.sci.h, 0x62430cbf, 0x62400cbc, 0xfffffffd )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.sub.sci.h, 0x5c65f4aa, 0x5c6cf4b1, 0x007 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.sub.sci.h, 0x4ccba783, 0x4ce3a79b, 0x018 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.sub.sci.h, 0x0456c20b, 0x0436c1eb, 0xffffffe0 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.sub.sci.h, 0x00010001, 0xffffffff )
  TEST_SIMM6_ZEROSRC1( 35, pv.sub.sci.h, 0xffe7ffe7, 0x019 )
  
  TEST_SIMM6_ZERODEST( 36, pv.sub.sci.h, 0x61c83959, 0xfffffffc )
  TEST_SIMM6_ZERODEST( 37, pv.sub.sci.h, 0xeae08462, 0xffffffeb )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
