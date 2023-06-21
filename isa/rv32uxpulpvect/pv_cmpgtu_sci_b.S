# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgtu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgtu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.cmpgtu.sci.b, 0x01010101, 0x01234567, 0x000 )
  TEST_UIMM6_OP( 3, pv.cmpgtu.sci.b, 0x00010101, 0x01234567, 0x012 )
  TEST_UIMM6_OP( 4, pv.cmpgtu.sci.b, 0x00010101, 0x01234567, 0x001 )
  TEST_UIMM6_OP( 5, pv.cmpgtu.sci.b, 0x01010100, 0xbacbb212, 0x024 )
  TEST_UIMM6_OP( 6, pv.cmpgtu.sci.b, 0x01010101, 0xdece2921, 0x020 )
  TEST_UIMM6_OP( 7, pv.cmpgtu.sci.b, 0x01010101, 0x4339c3ed, 0x034 )
  TEST_UIMM6_OP( 8, pv.cmpgtu.sci.b, 0x01010101, 0x4150987b, 0x03c )
  TEST_UIMM6_OP( 9, pv.cmpgtu.sci.b, 0x01010101, 0x1661d8f9, 0x008 )
  TEST_UIMM6_OP( 10, pv.cmpgtu.sci.b, 0x01010001, 0x43fc1a6d, 0x039 )
  TEST_UIMM6_OP( 11, pv.cmpgtu.sci.b, 0x01000101, 0x7c064e23, 0x014 )
  TEST_UIMM6_OP( 12, pv.cmpgtu.sci.b, 0x01010101, 0x31acd6bf, 0x00f )
  TEST_UIMM6_OP( 13, pv.cmpgtu.sci.b, 0x01010100, 0x593a9b29, 0x034 )
  TEST_UIMM6_OP( 14, pv.cmpgtu.sci.b, 0x01000101, 0x230a7e1b, 0x00d )
  TEST_UIMM6_OP( 15, pv.cmpgtu.sci.b, 0x01010100, 0xaeaecb01, 0x023 )
  TEST_UIMM6_OP( 16, pv.cmpgtu.sci.b, 0x01000101, 0x3a0473e6, 0x02e )
  TEST_UIMM6_OP( 17, pv.cmpgtu.sci.b, 0x00010101, 0x0a963d53, 0x036 )
  TEST_UIMM6_OP( 18, pv.cmpgtu.sci.b, 0x01010101, 0xfa81bc35, 0x024 )
  TEST_UIMM6_OP( 19, pv.cmpgtu.sci.b, 0x01010101, 0xde56f192, 0x02b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.cmpgtu.sci.b, 0x01010101, 0x26f7e5e1, 0x013 )
  TEST_UIMM6_SRC1_EQ_DEST( 21, pv.cmpgtu.sci.b, 0x01010001, 0xea7b26e8, 0x033 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 22, 0, pv.cmpgtu.sci.b, 0x01010001, 0xa1bb0f47, 0x027 )
  TEST_UIMM6_SRC1_BYPASS( 23, 1, pv.cmpgtu.sci.b, 0x01000101, 0x6019deab, 0x032 )
  TEST_UIMM6_SRC1_BYPASS( 24, 2, pv.cmpgtu.sci.b, 0x01010101, 0xa7b7fdf5, 0x021 )
  TEST_UIMM6_SRC1_BYPASS( 25, 0, pv.cmpgtu.sci.b, 0x01010101, 0xa4f384fe, 0x01b )
  TEST_UIMM6_SRC1_BYPASS( 26, 1, pv.cmpgtu.sci.b, 0x00010101, 0x053b1b17, 0x011 )
  TEST_UIMM6_SRC1_BYPASS( 27, 2, pv.cmpgtu.sci.b, 0x01010101, 0xf631ee7e, 0x00d )
  
  TEST_UIMM6_DEST_BYPASS( 28, 0, pv.cmpgtu.sci.b, 0x01000101, 0x5704535e, 0x020 )
  TEST_UIMM6_DEST_BYPASS( 29, 1, pv.cmpgtu.sci.b, 0x01010101, 0xd566edc3, 0x005 )
  TEST_UIMM6_DEST_BYPASS( 30, 2, pv.cmpgtu.sci.b, 0x01010101, 0x8f964cd7, 0x006 )
  TEST_UIMM6_DEST_BYPASS( 31, 0, pv.cmpgtu.sci.b, 0x01010101, 0xd163949e, 0x03d )
  TEST_UIMM6_DEST_BYPASS( 32, 1, pv.cmpgtu.sci.b, 0x01000100, 0x3216cc04, 0x01c )
  TEST_UIMM6_DEST_BYPASS( 33, 2, pv.cmpgtu.sci.b, 0x01010101, 0x0a913791, 0x009 )
  
  

  TEST_UIMM6_ZEROSRC1( 34, pv.cmpgtu.sci.b, 0x00000000, 0x03d )
  TEST_UIMM6_ZEROSRC1( 35, pv.cmpgtu.sci.b, 0x00000000, 0x01c )
  
  TEST_UIMM6_ZERODEST( 36, pv.cmpgtu.sci.b, 0x97c01f28, 0x03e )
  TEST_UIMM6_ZERODEST( 37, pv.cmpgtu.sci.b, 0xeef4fccc, 0x03f )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
