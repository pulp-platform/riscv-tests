# See LICENSE for license details.

#*****************************************************************************
# pv.minu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.minu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.minu.sc.h, 0x79787978, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.minu.sc.h, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.minu.sc.h, 0x4f69abee, 0x4f69e5e0, 0x45cdabee )
  TEST_RR_OP( 5, pv.minu.sc.h, 0x467f1abb, 0x467f1abb, 0xa185a074 )
  TEST_RR_OP( 6, pv.minu.sc.h, 0x75ed53cb, 0xf9e553cb, 0x949e75ed )
  TEST_RR_OP( 7, pv.minu.sc.h, 0x18821882, 0x6318d01c, 0x62241882 )
  TEST_RR_OP( 8, pv.minu.sc.h, 0xde54d7ea, 0xe5aed7ea, 0x07c6de54 )
  TEST_RR_OP( 9, pv.minu.sc.h, 0x73967396, 0x98aeeff7, 0x8b317396 )
  TEST_RR_OP( 10, pv.minu.sc.h, 0xdb52db52, 0xed6fedb7, 0xdfd3db52 )
  TEST_RR_OP( 11, pv.minu.sc.h, 0x3ae16328, 0x3ae16328, 0xc8fcaa9f )
  TEST_RR_OP( 12, pv.minu.sc.h, 0x6bf90951, 0xc2af0951, 0xefc06bf9 )
  TEST_RR_OP( 13, pv.minu.sc.h, 0x7c622bfb, 0x89422bfb, 0x3b5e7c62 )
  TEST_RR_OP( 14, pv.minu.sc.h, 0x95aee848, 0x95aef420, 0x5479e848 )
  TEST_RR_OP( 15, pv.minu.sc.h, 0x978cc427, 0x978cc427, 0xbe05c9b3 )
  TEST_RR_OP( 16, pv.minu.sc.h, 0x01995de4, 0x01995de4, 0x94a6a59c )
  TEST_RR_OP( 17, pv.minu.sc.h, 0x588e68bd, 0x588e68bd, 0xf6c6c7e7 )
  TEST_RR_OP( 18, pv.minu.sc.h, 0x77728131, 0x7772db47, 0x92988131 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.minu.sc.h, 0xecf84800, 0xecf84800, 0x3dc5ee1b )
  TEST_RR_SRC1_EQ_DEST( 20, pv.minu.sc.h, 0x81251eb6, 0xaef71eb6, 0xc23e8125 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.minu.sc.h, 0xbcec5b04, 0xbcec5b04, 0xf164efb2 )
  TEST_RR_SRC2_EQ_DEST( 22, pv.minu.sc.h, 0x8e46de72, 0x8e46de72, 0x884af30a )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.minu.sc.h, 0x3703787d, 0x3703787d )
  TEST_RR_SRC12_EQ_DEST( 24, pv.minu.sc.h, 0x9992ff12, 0x9992ff12 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.minu.sc.h, 0x39a396f2, 0x39a396f2, 0x39a396f2 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.minu.sc.h, 0x04802ccf, 0x04802ccf, 0x04802ccf )
  TEST_RR_DEST_BYPASS( 45, 2, pv.minu.sc.h, 0x2f4e5fad, 0x2f4e5fad, 0x2f4e5fad )
  TEST_RR_DEST_BYPASS( 46, 0, pv.minu.sc.h, 0x838ae051, 0x838ae051, 0x838ae051 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.minu.sc.h, 0x39878278, 0x39878278, 0x39878278 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.minu.sc.h, 0x10971097, 0x9f4b1097, 0x9f4b1097 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.minu.sc.h, 0x12b90f56, 0x959f0f56, 0x47b612b9 )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.minu.sc.h, 0x76f076f0, 0xcd0f80e3, 0x917676f0 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.minu.sc.h, 0x86a8f27b, 0x86a8f27b, 0x02ddf853 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.minu.sc.h, 0x905f577f, 0xcc98577f, 0x2cd6905f )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.minu.sc.h, 0x10357150, 0x1035ad87, 0x89187150 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.minu.sc.h, 0x5a215262, 0xab4a5262, 0xa5f15a21 )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.minu.sc.h, 0x490f490f, 0xd5669504, 0xf39f490f )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.minu.sc.h, 0x7c977c97, 0x937c8858, 0x1f597c97 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.minu.sc.h, 0x004b004b, 0xfc6720ad, 0x5e89004b )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.minu.sc.h, 0x2c692c69, 0xce68374b, 0x8c8a2c69 )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.minu.sc.h, 0x1bf51bf5, 0x5a6da3b4, 0x721d1bf5 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.minu.sc.h, 0xab1a2279, 0xc0602279, 0x451cab1a )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.minu.sc.h, 0xa1cda1cd, 0xc367d93a, 0x25eca1cd )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.minu.sc.h, 0xb8874f00, 0xeaaa4f00, 0x95d5b887 )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.minu.sc.h, 0x24fa4f29, 0x24fa4f29, 0xe5eb87a1 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.minu.sc.h, 0x43a958a1, 0x43a9bf5f, 0x668458a1 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.minu.sc.h, 0x2a927cab, 0x2a927cab, 0xeb1cd759 )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.minu.sc.h, 0x377d7517, 0x377d7517, 0xe496818b )
  
  

  TEST_RR_ZEROSRC1( 49, pv.minu.sc.h, 0x00000000, 0x11509c75 )
  TEST_RR_ZEROSRC1( 50, pv.minu.sc.h, 0x00000000, 0xa4163970 )
  
  TEST_RR_ZEROSRC2( 51, pv.minu.sc.h, 0x00000000, 0xa0f405d3 )
  TEST_RR_ZEROSRC2( 52, pv.minu.sc.h, 0x00000000, 0xd825e67d )
  
  TEST_RR_ZEROSRC12( 53, pv.minu.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.minu.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.minu.sc.h, 0x7b04a430, 0xbb3f1c49 )
  TEST_RR_ZERODEST( 56, pv.minu.sc.h, 0xb5741484, 0x8c473740 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
