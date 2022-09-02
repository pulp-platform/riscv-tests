# See LICENSE for license details.

#*****************************************************************************
# pv.cmpleu.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpleu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpleu.h, 0x00010001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpleu.h, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpleu.h, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpleu.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpleu.h, 0x00010001, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpleu.h, 0x00010000, 0x2826e9b4, 0x49a262db )
  TEST_RR_OP( 8, pv.cmpleu.h, 0x00010001, 0x5c310cf0, 0xa1d2a351 )
  TEST_RR_OP( 9, pv.cmpleu.h, 0x00010000, 0x2ff0b634, 0x48608442 )
  TEST_RR_OP( 10, pv.cmpleu.h, 0x00010001, 0x64790ceb, 0x97b15db5 )
  TEST_RR_OP( 11, pv.cmpleu.h, 0x00000000, 0x89e4cb5d, 0x0d101817 )
  TEST_RR_OP( 12, pv.cmpleu.h, 0x00000001, 0xfd0f35b9, 0x9e4037cb )
  TEST_RR_OP( 13, pv.cmpleu.h, 0x00010001, 0x71d278d0, 0x9fcbbe02 )
  TEST_RR_OP( 14, pv.cmpleu.h, 0x00010000, 0x164b956c, 0x7818868d )
  TEST_RR_OP( 15, pv.cmpleu.h, 0x00010000, 0xbc5b36eb, 0xe6791159 )
  TEST_RR_OP( 16, pv.cmpleu.h, 0x00010001, 0x60ff7d02, 0xf4a8d8ab )
  TEST_RR_OP( 17, pv.cmpleu.h, 0x00010001, 0x26340acd, 0x818bb434 )
  TEST_RR_OP( 18, pv.cmpleu.h, 0x00000001, 0xfe5d0259, 0x08a7ce7c )
  TEST_RR_OP( 19, pv.cmpleu.h, 0x00010001, 0xbfff9adb, 0xc5ecaeda )
  TEST_RR_OP( 20, pv.cmpleu.h, 0x00000000, 0xfacbbe7f, 0x2b917e1b )
  TEST_RR_OP( 21, pv.cmpleu.h, 0x00010000, 0x1e498784, 0x90688061 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpleu.h, 0x00000001, 0x9b9716a4, 0x290efcec )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpleu.h, 0x00000000, 0x7d7651c2, 0x199b2201 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpleu.h, 0x00000000, 0xf734f48f, 0x90353135 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpleu.h, 0x00010000, 0x155fd770, 0x1a513ea2 )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpleu.h, 0x00010001, 0x31eab412 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpleu.h, 0x00010001, 0x965f4f96 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpleu.h, 0x00010001, 0x05ab1d96, 0x05ab1d96 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpleu.h, 0x00010001, 0x707bb825, 0x707bb825 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpleu.h, 0x00010001, 0x18f29e74, 0x18f29e74 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpleu.h, 0x00010001, 0x3a6b9f9d, 0x3a6b9f9d )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpleu.h, 0x00010001, 0x6796ddc4, 0x6796ddc4 )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpleu.h, 0x00010001, 0x881ebd3e, 0x881ebd3e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpleu.h, 0x00000000, 0x6e6aca5b, 0x2f7c1538 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpleu.h, 0x00010000, 0x9d49d8cb, 0xd35b710c )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpleu.h, 0x00010001, 0x0c3f1280, 0xe99897d3 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpleu.h, 0x00000000, 0xae82bd26, 0x0906add0 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpleu.h, 0x00000000, 0x92f78aeb, 0x3db17e3a )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpleu.h, 0x00010001, 0x81f87433, 0xe564d80e )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpleu.h, 0x00010000, 0xbb16a699, 0xf72244e6 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpleu.h, 0x00000001, 0x22d9457f, 0x078a4e57 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpleu.h, 0x00010000, 0x52a4955c, 0xec94330c )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpleu.h, 0x00000000, 0x21bf97aa, 0x083a457d )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpleu.h, 0x00000001, 0x8b7cd56f, 0x293fd6a4 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpleu.h, 0x00000001, 0x816f6013, 0x7fa8e0ac )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpleu.h, 0x00000001, 0xe543033f, 0x37f96cb1 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpleu.h, 0x00010001, 0x34528eb3, 0x8f46d7a9 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpleu.h, 0x00000001, 0xbc72767c, 0x6a84f879 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpleu.h, 0x00000000, 0xfc70fc56, 0xedddb527 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpleu.h, 0x00010000, 0x270593ff, 0xae345063 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpleu.h, 0x00000001, 0xbb501ebe, 0xa5bfd391 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpleu.h, 0x00010001, 0x331cc4e6 )
  TEST_RR_ZEROSRC1( 53, pv.cmpleu.h, 0x00010001, 0xf363134c )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpleu.h, 0x00000000, 0x18801115 )
  TEST_RR_ZEROSRC2( 55, pv.cmpleu.h, 0x00000000, 0x729c8e17 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpleu.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpleu.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpleu.h, 0xf248442c, 0xb0a384ea )
  TEST_RR_ZERODEST( 59, pv.cmpleu.h, 0x3cb52602, 0x15914aaa )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
