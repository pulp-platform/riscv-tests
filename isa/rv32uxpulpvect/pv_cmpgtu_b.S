# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgtu.b
#-----------------------------------------------------------------------------
#
# Test pv.cmpgtu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgtu.b, 0x00000000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgtu.b, 0x01000100, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgtu.b, 0x00010001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgtu.b, 0x00000101, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgtu.b, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgtu.b, 0x00010000, 0x44a39605, 0x969cb678 )
  TEST_RR_OP( 8, pv.cmpgtu.b, 0x00010101, 0x22f1f5bf, 0x7bc19081 )
  TEST_RR_OP( 9, pv.cmpgtu.b, 0x01000100, 0xb523c68c, 0x0c9f4cfe )
  TEST_RR_OP( 10, pv.cmpgtu.b, 0x00000000, 0x39229d07, 0xf0b5fb89 )
  TEST_RR_OP( 11, pv.cmpgtu.b, 0x00000100, 0x3e3cae4e, 0x9e8d8a76 )
  TEST_RR_OP( 12, pv.cmpgtu.b, 0x00010100, 0x803ed908, 0x9529cad9 )
  TEST_RR_OP( 13, pv.cmpgtu.b, 0x00000000, 0x1d0a2889, 0x33897ceb )
  TEST_RR_OP( 14, pv.cmpgtu.b, 0x00010000, 0x05823c8b, 0x247578cd )
  TEST_RR_OP( 15, pv.cmpgtu.b, 0x01010100, 0xdd64a690, 0xa73d089a )
  TEST_RR_OP( 16, pv.cmpgtu.b, 0x00000001, 0x8a147346, 0xafe9d504 )
  TEST_RR_OP( 17, pv.cmpgtu.b, 0x01000001, 0xb81325ae, 0x93245e08 )
  TEST_RR_OP( 18, pv.cmpgtu.b, 0x01000101, 0xe74f88a6, 0x19bc0764 )
  TEST_RR_OP( 19, pv.cmpgtu.b, 0x00000100, 0x114e8025, 0x51a6264b )
  TEST_RR_OP( 20, pv.cmpgtu.b, 0x00010001, 0x5ea242f2, 0xbf42ae4e )
  TEST_RR_OP( 21, pv.cmpgtu.b, 0x01010000, 0x8d913539, 0x565c6789 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgtu.b, 0x01000000, 0xcf1a7471, 0x896176b5 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgtu.b, 0x01010000, 0xf79d7069, 0xa8529e6e )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgtu.b, 0x01000001, 0x807262c7, 0x06978366 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgtu.b, 0x01010000, 0x6575cd78, 0x434efba3 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgtu.b, 0x00000000, 0xd91ce9c4 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgtu.b, 0x00000000, 0x22817dbe )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgtu.b, 0x00000000, 0x0ea3c0bf, 0x0ea3c0bf )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgtu.b, 0x00000000, 0x28aa8e11, 0x28aa8e11 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgtu.b, 0x00000000, 0x7b95746c, 0x7b95746c )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgtu.b, 0x00000000, 0xcbda6194, 0xcbda6194 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgtu.b, 0x00000000, 0x13bcdb93, 0x13bcdb93 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgtu.b, 0x00000000, 0x43bdd0fc, 0x43bdd0fc )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgtu.b, 0x01000000, 0x8c5b52b6, 0x846f5dbb )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgtu.b, 0x01000100, 0x6c64c621, 0x3f663266 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgtu.b, 0x00010000, 0x099e5f86, 0xfb7c6eb6 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgtu.b, 0x01000100, 0xfe086591, 0xa9ca33bd )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgtu.b, 0x01010000, 0xcdf68e58, 0x8ac6b49b )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgtu.b, 0x01010001, 0xc4ef8cdd, 0x0e80c515 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgtu.b, 0x00010001, 0x0d5ee67e, 0x473ae93e )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgtu.b, 0x01000100, 0xcf448c16, 0x32d05967 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgtu.b, 0x01000101, 0x9825ebd0, 0x4d94b835 )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgtu.b, 0x01000101, 0xfc13e4d8, 0x58981fa5 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgtu.b, 0x01000100, 0xf576e315, 0x61d86761 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgtu.b, 0x01000000, 0xf9726742, 0x0cabbb9d )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgtu.b, 0x00010000, 0x721f6c46, 0x8507cbf6 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgtu.b, 0x00000100, 0x131ce50d, 0xb09d9554 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgtu.b, 0x00010101, 0x69cf12a3, 0xd1c10125 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgtu.b, 0x01000000, 0x9b308ccf, 0x0c688ef5 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgtu.b, 0x00000100, 0x8c50b233, 0xa8fd3156 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgtu.b, 0x01010001, 0xace08acd, 0x2c329fab )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgtu.b, 0x00000000, 0x2003ad99 )
  TEST_RR_ZEROSRC1( 53, pv.cmpgtu.b, 0x00000000, 0xfd50257c )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgtu.b, 0x01010101, 0x7dcfa9ca )
  TEST_RR_ZEROSRC2( 55, pv.cmpgtu.b, 0x01010101, 0x068e13e4 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgtu.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgtu.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgtu.b, 0xa20b67c0, 0xf2b639a4 )
  TEST_RR_ZERODEST( 59, pv.cmpgtu.b, 0xf6f9d335, 0x35f468a6 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
