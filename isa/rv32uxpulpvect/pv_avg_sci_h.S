# See LICENSE for license details.

#*****************************************************************************
# pv.avg.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.avg.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.avg.sci.h, 0x3fce3ecd, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.avg.sci.h, 0xc030c132, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.avg.sci.h, 0x00101121, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.avg.sci.h, 0xed12eced, 0xda1ad9d0, 0x00b )
  TEST_SIMM6_OP( 6, pv.avg.sci.h, 0x1e3af66d, 0x3c8cecf2, 0xffffffe8 )
  TEST_SIMM6_OP( 7, pv.avg.sci.h, 0x1bbdc289, 0x37678500, 0x013 )
  TEST_SIMM6_OP( 8, pv.avg.sci.h, 0x35a5f47a, 0x6b5fe908, 0xffffffec )
  TEST_SIMM6_OP( 9, pv.avg.sci.h, 0xf9a3d103, 0xf343a202, 0x004 )
  TEST_SIMM6_OP( 10, pv.avg.sci.h, 0xe4d43f37, 0xc9997e60, 0x00f )
  TEST_SIMM6_OP( 11, pv.avg.sci.h, 0xe302d1c9, 0xc616a3a4, 0xffffffef )
  TEST_SIMM6_OP( 12, pv.avg.sci.h, 0xfc6637f3, 0xf8d36fed, 0xfffffffa )
  TEST_SIMM6_OP( 13, pv.avg.sci.h, 0x1eb9114f, 0x3d7a22a5, 0xfffffff9 )
  TEST_SIMM6_OP( 14, pv.avg.sci.h, 0xee13e3d3, 0xdc1ac799, 0x00d )
  TEST_SIMM6_OP( 15, pv.avg.sci.h, 0x367f03ce, 0x6d1b07b9, 0xffffffe4 )
  TEST_SIMM6_OP( 16, pv.avg.sci.h, 0x2381f4ee, 0x46f1e9ca, 0x012 )
  TEST_SIMM6_OP( 17, pv.avg.sci.h, 0xcbc81654, 0x97862c9f, 0x00a )
  TEST_SIMM6_OP( 18, pv.avg.sci.h, 0x27c22332, 0x4f764657, 0x00e )
  TEST_SIMM6_OP( 19, pv.avg.sci.h, 0x3646e0a4, 0x6c8dc14a, 0xffffffff )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.avg.sci.h, 0x0010341e, 0x0040685c, 0xffffffe0 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.avg.sci.h, 0x06ee1046, 0x0df120a0, 0xffffffec )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.avg.sci.h, 0x183f32b2, 0x30736558, 0x00c )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.avg.sci.h, 0xf35ec53f, 0xe6b18a73, 0x00c )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.avg.sci.h, 0x302fc3ce, 0x606587a2, 0xfffffffa )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.avg.sci.h, 0x22a6fead, 0x4555fd63, 0xfffffff8 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.avg.sci.h, 0xe0adeb35, 0xc16cd67d, 0xffffffee )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.avg.sci.h, 0x05101599, 0x0a112b24, 0x00f )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.avg.sci.h, 0x36763906, 0x6cd171f1, 0x01c )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.avg.sci.h, 0x1274ec39, 0x24cfd858, 0x01a )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.avg.sci.h, 0xe9bf1ced, 0xd39a39f6, 0xffffffe4 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.avg.sci.h, 0x2aadf2b3, 0x5562e56e, 0xfffffff9 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.avg.sci.h, 0x19df3f1d, 0x33cb7e46, 0xfffffff4 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.avg.sci.h, 0xf8d93c26, 0xf1b5784f, 0xfffffffe )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.avg.sci.h, 0xfff2fff2, 0xffffffe4 )
  TEST_SIMM6_ZEROSRC1( 35, pv.avg.sci.h, 0xfffcfffc, 0xfffffff9 )
  
  TEST_SIMM6_ZERODEST( 36, pv.avg.sci.h, 0xa40c0247, 0x007 )
  TEST_SIMM6_ZERODEST( 37, pv.avg.sci.h, 0x033d4d0f, 0x01e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
