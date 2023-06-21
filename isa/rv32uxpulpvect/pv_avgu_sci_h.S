# See LICENSE for license details.

#*****************************************************************************
# pv.avgu.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.avgu.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.avgu.sci.h, 0x3fce3ecd, 0x7f7e7d7c, 0x01f )
  TEST_UIMM6_OP( 3, pv.avgu.sci.h, 0x00101121, 0x00112233, 0x010 )
  TEST_UIMM6_OP( 4, pv.avgu.sci.h, 0x023802c7, 0x04580577, 0x018 )
  TEST_UIMM6_OP( 5, pv.avgu.sci.h, 0x3f1647e9, 0x7e148fb9, 0x019 )
  TEST_UIMM6_OP( 6, pv.avgu.sci.h, 0x5a0e08d7, 0xb3ff1192, 0x01d )
  TEST_UIMM6_OP( 7, pv.avgu.sci.h, 0x762b3a79, 0xec5674f2, 0x000 )
  TEST_UIMM6_OP( 8, pv.avgu.sci.h, 0x664535ca, 0xcc566b61, 0x034 )
  TEST_UIMM6_OP( 9, pv.avgu.sci.h, 0x4f554937, 0x9e949257, 0x017 )
  TEST_UIMM6_OP( 10, pv.avgu.sci.h, 0x30277c5b, 0x6046f8ae, 0x009 )
  TEST_UIMM6_OP( 11, pv.avgu.sci.h, 0x2c5340b6, 0x586e8135, 0x038 )
  TEST_UIMM6_OP( 12, pv.avgu.sci.h, 0x131e7913, 0x2615f1fe, 0x028 )
  TEST_UIMM6_OP( 13, pv.avgu.sci.h, 0x6e1f7024, 0xdc03e00e, 0x03b )
  TEST_UIMM6_OP( 14, pv.avgu.sci.h, 0x39cf4ba6, 0x73859732, 0x01a )
  TEST_UIMM6_OP( 15, pv.avgu.sci.h, 0x59aa75d5, 0xb340eb96, 0x014 )
  TEST_UIMM6_OP( 16, pv.avgu.sci.h, 0x20ce4495, 0x417088fe, 0x02d )
  TEST_UIMM6_OP( 17, pv.avgu.sci.h, 0x335f0522, 0x66900a16, 0x02f )
  TEST_UIMM6_OP( 18, pv.avgu.sci.h, 0x5301000f, 0xa5cbffe7, 0x037 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 19, pv.avgu.sci.h, 0x23485989, 0x4679b2fb, 0x017 )
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.avgu.sci.h, 0x34441f33, 0x68563e35, 0x032 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.avgu.sci.h, 0x3477557b, 0x68b7aabf, 0x037 )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.avgu.sci.h, 0x2a53755c, 0x549eeab1, 0x008 )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.avgu.sci.h, 0x480569a9, 0x8ffcd345, 0x00e )
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.avgu.sci.h, 0x713c2c54, 0xe27658a7, 0x002 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.avgu.sci.h, 0x5d6232b2, 0xbaa16540, 0x024 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.avgu.sci.h, 0x7a8b42d5, 0xf4df8574, 0x037 )
  
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.avgu.sci.h, 0x22cd5f91, 0x4575befd, 0x025 )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.avgu.sci.h, 0x0a3956a9, 0x1472ad52, 0x001 )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.avgu.sci.h, 0x549b33df, 0xa908678f, 0x02f )
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.avgu.sci.h, 0x44be5e10, 0x896cbc11, 0x010 )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.avgu.sci.h, 0x1b5f43b3, 0x36bc8765, 0x002 )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.avgu.sci.h, 0x27b85b7d, 0x4f50b6d9, 0x021 )
  
  

  TEST_UIMM6_ZEROSRC1( 33, pv.avgu.sci.h, 0x001a001a, 0x034 )
  TEST_UIMM6_ZEROSRC1( 34, pv.avgu.sci.h, 0x00140014, 0x029 )
  
  TEST_UIMM6_ZERODEST( 35, pv.avgu.sci.h, 0xddfc81fd, 0x01b )
  TEST_UIMM6_ZERODEST( 36, pv.avgu.sci.h, 0xc5782947, 0x022 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
