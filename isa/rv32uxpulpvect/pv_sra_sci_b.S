# See LICENSE for license details.

#*****************************************************************************
# pv.sra.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.sra.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.sra.sci.b, 0x40000000, 0x40000000, 0x00 )
  TEST_UIMM6_OP( 3, pv.sra.sci.b, 0xff000000, 0x80000000, 0x1f )
  TEST_UIMM6_OP( 4, pv.sra.sci.b, 0x40000000, 0x40000000, 0x10 )
  TEST_UIMM6_OP( 5, pv.sra.sci.b, 0xf7101fe0, 0xdd417e81, 0x02 )
  TEST_UIMM6_OP( 6, pv.sra.sci.b, 0xf50af6f6, 0xaf53b2b3, 0x03 )
  TEST_UIMM6_OP( 7, pv.sra.sci.b, 0xfb0c0d0d, 0xd9636a6d, 0x1b )
  TEST_UIMM6_OP( 8, pv.sra.sci.b, 0xe98348a0, 0xe98348a0, 0x18 )
  TEST_UIMM6_OP( 9, pv.sra.sci.b, 0xf705f209, 0xbd289648, 0x13 )
  TEST_UIMM6_OP( 10, pv.sra.sci.b, 0xfe0908f6, 0xf14a43b4, 0x13 )
  TEST_UIMM6_OP( 11, pv.sra.sci.b, 0x05fef8ff, 0x5fea87f4, 0x1c )
  TEST_UIMM6_OP( 12, pv.sra.sci.b, 0x0906f5fa, 0x271ad5e8, 0x1a )
  TEST_UIMM6_OP( 13, pv.sra.sci.b, 0x0000feff, 0x003c98e0, 0x06 )
  TEST_UIMM6_OP( 14, pv.sra.sci.b, 0x1efa0ce0, 0x79eb3181, 0x1a )
  TEST_UIMM6_OP( 15, pv.sra.sci.b, 0x68c8ca33, 0x68c8ca33, 0x10 )
  TEST_UIMM6_OP( 16, pv.sra.sci.b, 0x0ff2f9fa, 0x7b94c8d5, 0x13 )
  TEST_UIMM6_OP( 17, pv.sra.sci.b, 0xfffffefd, 0xeeecdeb5, 0x15 )
  TEST_UIMM6_OP( 18, pv.sra.sci.b, 0x040605fc, 0x436f5dc1, 0x04 )
  TEST_UIMM6_OP( 19, pv.sra.sci.b, 0x3726979b, 0x3726979b, 0x10 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.sra.sci.b, 0xfe000101, 0x933b6940, 0x0e )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.sra.sci.b, 0xff1ff50e, 0xfc7dd63a, 0x12 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.sra.sci.b, 0xffff0000, 0xf5de0a5d, 0x1f )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.sra.sci.b, 0x35e4e428, 0x6ac9c951, 0x19 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.sra.sci.b, 0xff05ff04, 0xf451ff46, 0x14 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.sra.sci.b, 0xfe01fe00, 0x8a50a92a, 0x06 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.sra.sci.b, 0xe02129f6, 0xc14253ec, 0x09 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.sra.sci.b, 0xff000000, 0x8e7e1c78, 0x07 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.sra.sci.b, 0x12ca1bf8, 0x249536f0, 0x19 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.sra.sci.b, 0x4a1c7104, 0x4a1c7104, 0x08 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.sra.sci.b, 0x0a554b83, 0x0a554b83, 0x10 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.sra.sci.b, 0xffff00ff, 0xe0e938a7, 0x07 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.sra.sci.b, 0x00ff0100, 0x23ed6d1a, 0x1e )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.sra.sci.b, 0xf706f1f4, 0xba318ba0, 0x1b )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.sra.sci.b, 0x00000000, 0x00 )
  TEST_UIMM6_ZEROSRC1( 35, pv.sra.sci.b, 0x00000000, 0x13 )
  
  TEST_UIMM6_ZERODEST( 36, pv.sra.sci.b, 0x18e9bd45, 0x0d )
  TEST_UIMM6_ZERODEST( 37, pv.sra.sci.b, 0x09f636a0, 0x16 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
