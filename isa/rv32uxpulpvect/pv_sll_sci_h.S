# See LICENSE for license details.

#*****************************************************************************
# pv.sll.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.sll.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.sll.sci.h, 0x81818181, 0x81818181, 0x00 )
  TEST_UIMM6_OP( 3, pv.sll.sci.h, 0x80008000, 0x81818181, 0x1f )
  TEST_UIMM6_OP( 4, pv.sll.sci.h, 0x81818181, 0x81818181, 0x10 )
  TEST_UIMM6_OP( 5, pv.sll.sci.h, 0xb540be60, 0x0b54cbe6, 0x04 )
  TEST_UIMM6_OP( 6, pv.sll.sci.h, 0x60a01d60, 0x5b05f8eb, 0x05 )
  TEST_UIMM6_OP( 7, pv.sll.sci.h, 0xb982e640, 0x5cc17320, 0x01 )
  TEST_UIMM6_OP( 8, pv.sll.sci.h, 0xf4e0b4a0, 0xcfa775a5, 0x05 )
  TEST_UIMM6_OP( 9, pv.sll.sci.h, 0x0a102720, 0x30a17272, 0x14 )
  TEST_UIMM6_OP( 10, pv.sll.sci.h, 0xa8007000, 0x31d5e24e, 0x0b )
  TEST_UIMM6_OP( 11, pv.sll.sci.h, 0xa2007800, 0xd5d1f03c, 0x19 )
  TEST_UIMM6_OP( 12, pv.sll.sci.h, 0x39005200, 0xe7393452, 0x18 )
  TEST_UIMM6_OP( 13, pv.sll.sci.h, 0x34122352, 0x9a0911a9, 0x11 )
  TEST_UIMM6_OP( 14, pv.sll.sci.h, 0x784ad01a, 0x3c25e80d, 0x11 )
  TEST_UIMM6_OP( 15, pv.sll.sci.h, 0x2a044fa4, 0x0a8113e9, 0x12 )
  TEST_UIMM6_OP( 16, pv.sll.sci.h, 0x29d854a0, 0x053b8a94, 0x13 )
  TEST_UIMM6_OP( 17, pv.sll.sci.h, 0x80008000, 0x97a7ec7f, 0x1f )
  TEST_UIMM6_OP( 18, pv.sll.sci.h, 0x85af1495, 0x85af1495, 0x00 )
  TEST_UIMM6_OP( 19, pv.sll.sci.h, 0x4000c000, 0x8179570f, 0x1e )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.sll.sci.h, 0xf3e05d90, 0x3f3ea5d9, 0x14 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.sll.sci.h, 0x2a400480, 0xe8a9f412, 0x06 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.sll.sci.h, 0x0000e000, 0x0420ca6e, 0x1c )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.sll.sci.h, 0xc0008000, 0x7413b9a6, 0x0e )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.sll.sci.h, 0xf900e100, 0x0df939e1, 0x18 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.sll.sci.h, 0x7ca997df, 0x7ca997df, 0x00 )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.sll.sci.h, 0xc0a0a6c0, 0x7e05f536, 0x15 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.sll.sci.h, 0x4e009600, 0x8a9c352c, 0x07 )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.sll.sci.h, 0xfbe8d760, 0xfdf4ebb0, 0x11 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.sll.sci.h, 0xec085248, 0x1d816a49, 0x13 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.sll.sci.h, 0x5580a0c0, 0x2aac6d06, 0x15 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.sll.sci.h, 0xedc01c40, 0x576ea0e2, 0x05 )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.sll.sci.h, 0xec00cc00, 0x113b30f3, 0x0a )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.sll.sci.h, 0xc9807580, 0x9b2691d6, 0x16 )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.sll.sci.h, 0x00000000, 0x1f )
  TEST_UIMM6_ZEROSRC1( 35, pv.sll.sci.h, 0x00000000, 0x18 )
  
  TEST_UIMM6_ZERODEST( 36, pv.sll.sci.h, 0xc443da21, 0x1e )
  TEST_UIMM6_ZERODEST( 37, pv.sll.sci.h, 0x1e152c47, 0x0b )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
