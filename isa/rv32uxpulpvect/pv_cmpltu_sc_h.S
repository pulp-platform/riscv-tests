# See LICENSE for license details.

#*****************************************************************************
# pv.cmpltu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpltu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpltu.sc.h, 0x00010000, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpltu.sc.h, 0x00010000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpltu.sc.h, 0x00010000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpltu.sc.h, 0x00000000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpltu.sc.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpltu.sc.h, 0x00000000, 0x5b0c621b, 0xc50247aa )
  TEST_RR_OP( 8, pv.cmpltu.sc.h, 0x00010001, 0x7ba51344, 0x9999d8be )
  TEST_RR_OP( 9, pv.cmpltu.sc.h, 0x00010001, 0x371a1fd2, 0x78d9d5ab )
  TEST_RR_OP( 10, pv.cmpltu.sc.h, 0x00010001, 0xb29f5af3, 0x950bfab2 )
  TEST_RR_OP( 11, pv.cmpltu.sc.h, 0x00010000, 0x0a04e57d, 0xe23de3ce )
  TEST_RR_OP( 12, pv.cmpltu.sc.h, 0x00000000, 0x29c73742, 0x6e722064 )
  TEST_RR_OP( 13, pv.cmpltu.sc.h, 0x00000000, 0x29a6f748, 0x994d0cdc )
  TEST_RR_OP( 14, pv.cmpltu.sc.h, 0x00010001, 0xf8e47dde, 0x6d12faef )
  TEST_RR_OP( 15, pv.cmpltu.sc.h, 0x00000000, 0x64ddd035, 0x9b6d2b1a )
  TEST_RR_OP( 16, pv.cmpltu.sc.h, 0x00000000, 0xc559a20d, 0x67730a2c )
  TEST_RR_OP( 17, pv.cmpltu.sc.h, 0x00010001, 0x06791aa3, 0x77c39c2c )
  TEST_RR_OP( 18, pv.cmpltu.sc.h, 0x00000000, 0xc44b5b7a, 0x514737e2 )
  TEST_RR_OP( 19, pv.cmpltu.sc.h, 0x00010001, 0x1789a6f0, 0x5967b239 )
  TEST_RR_OP( 20, pv.cmpltu.sc.h, 0x00010000, 0xb133e0dc, 0x1222cbd6 )
  TEST_RR_OP( 21, pv.cmpltu.sc.h, 0x00010001, 0x7b71c8bc, 0x94bbdc90 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpltu.sc.h, 0x00000000, 0xc498ffca, 0xb9d47158 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpltu.sc.h, 0x00000001, 0xe23e266b, 0x8730c83d )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpltu.sc.h, 0x00010001, 0xbb89bd3e, 0x6947d949 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpltu.sc.h, 0x00010000, 0x3cded2fe, 0xf9d2c217 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpltu.sc.h, 0x00000000, 0x6a672869 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpltu.sc.h, 0x00010000, 0x527cd535 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpltu.sc.h, 0x00000000, 0x76f0762a, 0x76f0762a )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpltu.sc.h, 0x00000000, 0x7d4113fe, 0x7d4113fe )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpltu.sc.h, 0x00000000, 0x9d24224b, 0x9d24224b )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpltu.sc.h, 0x00000000, 0xa22292b1, 0xa22292b1 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpltu.sc.h, 0x00010000, 0xd5baf37d, 0xd5baf37d )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpltu.sc.h, 0x00010000, 0x5beb758e, 0x5beb758e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpltu.sc.h, 0x00010001, 0x0d14799b, 0xeaecf892 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpltu.sc.h, 0x00000001, 0xb84004eb, 0x0e80aabd )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpltu.sc.h, 0x00010001, 0x247c7d09, 0x6291802e )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpltu.sc.h, 0x00010001, 0x5082c413, 0x4ad0f909 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpltu.sc.h, 0x00010000, 0x1909c379, 0x29ac2e41 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpltu.sc.h, 0x00000000, 0x7610f07b, 0xd118052d )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpltu.sc.h, 0x00010001, 0x67525ea2, 0xb4a8e8ad )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpltu.sc.h, 0x00000000, 0xdee4ebf9, 0xd50d8ae2 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpltu.sc.h, 0x00010000, 0x4cb5c0b1, 0x14077bdd )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpltu.sc.h, 0x00010000, 0x2c92c11a, 0x685a8227 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpltu.sc.h, 0x00010000, 0x30528d12, 0xfff8320f )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpltu.sc.h, 0x00000000, 0x7905b10c, 0xc6f8193a )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpltu.sc.h, 0x00000000, 0xce0fdcf5, 0x4e1066e3 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpltu.sc.h, 0x00000001, 0xbc964ca4, 0xe4bf571f )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpltu.sc.h, 0x00010001, 0x495304a5, 0x709fafc0 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpltu.sc.h, 0x00010001, 0x1ea65e35, 0x9d27b5f3 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpltu.sc.h, 0x00000001, 0x953d0549, 0x13741574 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpltu.sc.h, 0x00010001, 0x6936050f, 0x21c079c5 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpltu.sc.h, 0x00010001, 0x869b0153 )
  TEST_RR_ZEROSRC1( 53, pv.cmpltu.sc.h, 0x00010001, 0xb9d3f1b6 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpltu.sc.h, 0x00000000, 0xf031b717 )
  TEST_RR_ZEROSRC2( 55, pv.cmpltu.sc.h, 0x00000000, 0x542506ca )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpltu.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 57, pv.cmpltu.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 58, pv.cmpltu.sc.h, 0x8c9ba28a, 0x9a71dc99 )
  TEST_RR_ZERODEST( 59, pv.cmpltu.sc.h, 0x4776cfa7, 0x18478902 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
