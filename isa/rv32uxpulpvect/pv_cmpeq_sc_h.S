# See LICENSE for license details.

#*****************************************************************************
# pv.cmpeq.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpeq.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpeq.sc.h, 0x00000001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpeq.sc.h, 0x00000000, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpeq.sc.h, 0x00000000, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpeq.sc.h, 0x00010000, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpeq.sc.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpeq.sc.h, 0x00000000, 0x0ffce584, 0x0fffc751 )
  TEST_RR_OP( 8, pv.cmpeq.sc.h, 0x00000000, 0x0ff21918, 0x0ff5377f )
  TEST_RR_OP( 9, pv.cmpeq.sc.h, 0x00000000, 0x0ff35d35, 0x0ffdb7b1 )
  TEST_RR_OP( 10, pv.cmpeq.sc.h, 0x00000000, 0x0ff1a6a0, 0x0ff00abf )
  TEST_RR_OP( 11, pv.cmpeq.sc.h, 0x00000000, 0x0ff0fc6a, 0x0ff0ee46 )
  TEST_RR_OP( 12, pv.cmpeq.sc.h, 0x00000000, 0x0ff6beee, 0x0ff5601e )
  TEST_RR_OP( 13, pv.cmpeq.sc.h, 0x00000000, 0x0ff897ad, 0x0ffdaed1 )
  TEST_RR_OP( 14, pv.cmpeq.sc.h, 0x00000000, 0x0ff1ee13, 0x0ff19cfb )
  TEST_RR_OP( 15, pv.cmpeq.sc.h, 0x00000000, 0x0ff1b699, 0x0ffa3b81 )
  TEST_RR_OP( 16, pv.cmpeq.sc.h, 0x00000000, 0x0ff32fbb, 0x0ffff49e )
  TEST_RR_OP( 17, pv.cmpeq.sc.h, 0x00000000, 0x0ff56d03, 0x0ffe21ee )
  TEST_RR_OP( 18, pv.cmpeq.sc.h, 0x00000000, 0x0ffb8b17, 0x0ff57a1f )
  TEST_RR_OP( 19, pv.cmpeq.sc.h, 0x00000000, 0x0ffbba40, 0x0fffaf3b )
  TEST_RR_OP( 20, pv.cmpeq.sc.h, 0x00000000, 0x0ff3a2b1, 0x0ffcad46 )
  TEST_RR_OP( 21, pv.cmpeq.sc.h, 0x00000000, 0x0ff96c70, 0x0ffae783 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpeq.sc.h, 0x00000000, 0x0ff1b815, 0x0ffbdf7c )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpeq.sc.h, 0x00000000, 0x0ff4da13, 0x0ff1899d )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpeq.sc.h, 0x00000000, 0x0ff6bb4b, 0x0ffbcc44 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpeq.sc.h, 0x00000000, 0x0ff486ab, 0x0fffef4c )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpeq.sc.h, 0x00000001, 0x0ff4dd7a )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpeq.sc.h, 0x00000001, 0x0ffdbf6a )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpeq.sc.h, 0x00000001, 0x0ff48aff, 0x0ff48aff )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpeq.sc.h, 0x00000001, 0x0ff8a146, 0x0ff8a146 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpeq.sc.h, 0x00000001, 0x0ffd2121, 0x0ffd2121 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpeq.sc.h, 0x00000001, 0x0ff79275, 0x0ff79275 )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpeq.sc.h, 0x00000001, 0x0ff4143a, 0x0ff4143a )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpeq.sc.h, 0x00000001, 0x0ffc9532, 0x0ffc9532 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpeq.sc.h, 0x00000000, 0x0ff34d91, 0x0ffb40da )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpeq.sc.h, 0x00000000, 0x0ff568bf, 0x0ff3b4c2 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpeq.sc.h, 0x00000000, 0x0ff54664, 0x0ffc2810 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpeq.sc.h, 0x00000000, 0x0ffc6c43, 0x0ff9ec02 )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpeq.sc.h, 0x00000000, 0x0ffdb385, 0x0ff71937 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpeq.sc.h, 0x00000000, 0x0ffe7d73, 0x0ffdbaf5 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpeq.sc.h, 0x00000000, 0x0ffe0b12, 0x0ff96339 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpeq.sc.h, 0x00000000, 0x0ff3825a, 0x0ffeac53 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpeq.sc.h, 0x00000000, 0x0ff6902f, 0x0ff8cf6b )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpeq.sc.h, 0x00000000, 0x0fff26eb, 0x0fff5b99 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpeq.sc.h, 0x00000000, 0x0ff87dce, 0x0ff00293 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpeq.sc.h, 0x00000000, 0x0ff6ac42, 0x0ffe2247 )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpeq.sc.h, 0x00000000, 0x0ff42414, 0x0ffce63e )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpeq.sc.h, 0x00000000, 0x0fff5ba4, 0x0ffcd086 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpeq.sc.h, 0x00000000, 0x0ff7c3e2, 0x0ffa6d28 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpeq.sc.h, 0x00000000, 0x0ff750c3, 0x0ffb2a25 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpeq.sc.h, 0x00000000, 0x0ff23040, 0x0ff104a5 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpeq.sc.h, 0x00000000, 0x0ff309ab, 0x0ffb9849 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpeq.sc.h, 0x00000000, 0x0ff13793 )
  TEST_RR_ZEROSRC1( 53, pv.cmpeq.sc.h, 0x00000000, 0x0ffcd5fd )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpeq.sc.h, 0x00000000, 0x0ff17b2a )
  TEST_RR_ZEROSRC2( 55, pv.cmpeq.sc.h, 0x00000000, 0x0ff88c3a )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpeq.sc.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpeq.sc.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpeq.sc.h, 0x0ff6706e, 0x0fff32b7 )
  TEST_RR_ZERODEST( 59, pv.cmpeq.sc.h, 0x0ffa86d0, 0x0ff507dc )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
