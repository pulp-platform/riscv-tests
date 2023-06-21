# See LICENSE for license details.

#*****************************************************************************
# pv.max.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.max.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.max.sci.h, 0x7f7e7d7c, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.max.sci.h, 0xffe0ffe0, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.max.sci.h, 0x00112233, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.max.sci.h, 0x1b6f445f, 0x1b6f445f, 0x015 )
  TEST_SIMM6_OP( 6, pv.max.sci.h, 0xffe5ffe5, 0xdb5ae58b, 0xffffffe5 )
  TEST_SIMM6_OP( 7, pv.max.sci.h, 0x73c47fd8, 0x73c47fd8, 0xfffffff6 )
  TEST_SIMM6_OP( 8, pv.max.sci.h, 0x789e4162, 0x789e4162, 0x00f )
  TEST_SIMM6_OP( 9, pv.max.sci.h, 0xffffffff, 0xa02792bc, 0xffffffff )
  TEST_SIMM6_OP( 10, pv.max.sci.h, 0x49e9fff3, 0x49e9f441, 0xfffffff3 )
  TEST_SIMM6_OP( 11, pv.max.sci.h, 0x15c7779e, 0x15c7779e, 0x018 )
  TEST_SIMM6_OP( 12, pv.max.sci.h, 0xffe17916, 0x89787916, 0xffffffe1 )
  TEST_SIMM6_OP( 13, pv.max.sci.h, 0xffe1ffe1, 0xc8ea943b, 0xffffffe1 )
  TEST_SIMM6_OP( 14, pv.max.sci.h, 0x2f4a0003, 0x2f4afd1f, 0x003 )
  TEST_SIMM6_OP( 15, pv.max.sci.h, 0x37751009, 0x37751009, 0xffffffe4 )
  TEST_SIMM6_OP( 16, pv.max.sci.h, 0x04370003, 0x0437cb3d, 0x003 )
  TEST_SIMM6_OP( 17, pv.max.sci.h, 0x72ed6d73, 0x72ed6d73, 0x015 )
  TEST_SIMM6_OP( 18, pv.max.sci.h, 0x3ed1214f, 0x3ed1214f, 0x015 )
  TEST_SIMM6_OP( 19, pv.max.sci.h, 0xffe239b9, 0xeb4039b9, 0xffffffe2 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.max.sci.h, 0x36731859, 0x36731859, 0xfffffff9 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.max.sci.h, 0x00123b2a, 0x98b93b2a, 0x012 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.max.sci.h, 0xfff30c5d, 0xe3820c5d, 0xfffffff3 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.max.sci.h, 0x001a35c2, 0xc2ec35c2, 0x01a )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.max.sci.h, 0xffeb06ea, 0xace206ea, 0xffffffeb )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.max.sci.h, 0xfffe187f, 0x85d1187f, 0xfffffffe )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.max.sci.h, 0xffefffef, 0xb799b804, 0xffffffef )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.max.sci.h, 0x0fc60015, 0x0fc6914c, 0x015 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.max.sci.h, 0xffe82de1, 0xbdf92de1, 0xffffffe8 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.max.sci.h, 0xffef2758, 0xe3412758, 0xffffffef )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.max.sci.h, 0x3196fff7, 0x31969b0c, 0xfffffff7 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.max.sci.h, 0x001b001b, 0x9531941f, 0x01b )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.max.sci.h, 0x1d5a102f, 0x1d5a102f, 0xfffffffb )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.max.sci.h, 0x59c2001e, 0x59c2a503, 0x01e )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.max.sci.h, 0x00190019, 0x019 )
  TEST_SIMM6_ZEROSRC1( 35, pv.max.sci.h, 0x00050005, 0x005 )
  
  TEST_SIMM6_ZERODEST( 36, pv.max.sci.h, 0xe6ede087, 0xffffffed )
  TEST_SIMM6_ZERODEST( 37, pv.max.sci.h, 0x2475c843, 0xfffffffe )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
