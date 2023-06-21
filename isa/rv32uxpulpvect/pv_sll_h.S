# See LICENSE for license details.

#*****************************************************************************
# pv.sll.h
#-----------------------------------------------------------------------------
#
# Test pv.sll.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sll.h, 0x08008000, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sll.h, 0x08008181, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sll.h, 0x08000302, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sll.h, 0x40000000, 0x24451e00, 0x946e935a )
  TEST_RR_OP( 6, pv.sll.h, 0xe074b400, 0xf03a9a5a, 0x8c417eb9 )
  TEST_RR_OP( 7, pv.sll.h, 0xb4000000, 0x91b4a6ec, 0x9708bc2e )
  TEST_RR_OP( 8, pv.sll.h, 0x1000aa00, 0xd92244d5, 0x5bdb7429 )
  TEST_RR_OP( 9, pv.sll.h, 0x58003800, 0x0b6bea0e, 0xd7aba09a )
  TEST_RR_OP( 10, pv.sll.h, 0xd4aae9c8, 0xea55ba72, 0xd9a1f1c2 )
  TEST_RR_OP( 11, pv.sll.h, 0x7380b000, 0x48e7dc96, 0xac37827b )
  TEST_RR_OP( 12, pv.sll.h, 0xa000ed00, 0x489413b4, 0xa30b0826 )
  TEST_RR_OP( 13, pv.sll.h, 0xaa109020, 0xeaa17481, 0xd79444b5 )
  TEST_RR_OP( 14, pv.sll.h, 0x4d003084, 0xa4d09842, 0x14d4cc61 )
  TEST_RR_OP( 15, pv.sll.h, 0x040031c0, 0xf0043cc7, 0xcdd86a86 )
  TEST_RR_OP( 16, pv.sll.h, 0xda00fa00, 0xd7edefd0, 0x56e99f55 )
  TEST_RR_OP( 17, pv.sll.h, 0xc0008000, 0x51b683d5, 0x763d3e5f )
  TEST_RR_OP( 18, pv.sll.h, 0xea00f730, 0xfe75cf73, 0xb24918e4 )
  TEST_RR_OP( 19, pv.sll.h, 0x80006000, 0x2175ebf3, 0xb18f91ed )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sll.h, 0x7e8048a8, 0x05faa915, 0xb7461973 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sll.h, 0xd9e0f100, 0x76cf8af1, 0xe4e5a898 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sll.h, 0xd000ad60, 0xddb44ad6, 0x039a0a14 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sll.h, 0x1433c600, 0x143386c6, 0xa5106518 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sll.h, 0x9800ab80, 0x50984357 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sll.h, 0xf13026a0, 0xf1303135 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sll.h, 0x35982800, 0x06b38828, 0x06b38828 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sll.h, 0xe800cb80, 0x8bba1d97, 0x8bba1d97 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sll.h, 0x38008000, 0xeb38a7ff, 0xeb38a7ff )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sll.h, 0x0b808000, 0x0c17deaf, 0x0c17deaf )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sll.h, 0xa4a0f288, 0x6d25bca2, 0x6d25bca2 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sll.h, 0xce986800, 0x99d3601a, 0x99d3601a )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sll.h, 0x37207be8, 0xe9b9bdf4, 0x09152851 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sll.h, 0xe000ccf6, 0x181f667b, 0x4e9d3f51 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sll.h, 0x17408270, 0xf85df04e, 0x38e64573 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sll.h, 0x80007bd0, 0xeaf06f7a, 0x549b41e3 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sll.h, 0xab486300, 0xab489b63, 0x14502f18 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sll.h, 0x6879ef50, 0x6879bbd4, 0x69b06682 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sll.h, 0x9200d800, 0x964803f6, 0x5666c31a )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sll.h, 0x61dd3d00, 0x61dd947a, 0x57a03197 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sll.h, 0x178012a0, 0x302f8950, 0x4e875dc1 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sll.h, 0x38009400, 0xe7382d94, 0x6bf8b628 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sll.h, 0xbe400900, 0xf5f21212, 0x72c508e7 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sll.h, 0xcd90ed00, 0x79b227da, 0x36e39c47 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sll.h, 0xa000bb00, 0xf5e8e6ec, 0x115a10e6 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sll.h, 0xf0008900, 0xcede5b12, 0x10ab51c7 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sll.h, 0xd9dccc80, 0x3677d199, 0xdeb2d7b7 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sll.h, 0x0c009dc0, 0xfc0389dc, 0x64fa3764 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sll.h, 0x90004300, 0xa1524643, 0x3ceba678 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sll.h, 0xae80e7a0, 0x7abace7a, 0xba3686d4 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sll.h, 0x00000000, 0x1b12f669 )
  TEST_RR_ZEROSRC1( 51, pv.sll.h, 0x00000000, 0xd8f455e2 )
  
  TEST_RR_ZEROSRC2( 52, pv.sll.h, 0x57554ba4, 0x57554ba4 )
  TEST_RR_ZEROSRC2( 53, pv.sll.h, 0x1e38bb3d, 0x1e38bb3d )
  
  TEST_RR_ZEROSRC12( 54, pv.sll.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sll.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sll.h, 0xca59e7fa, 0x42172fc0 )
  TEST_RR_ZERODEST( 57, pv.sll.h, 0xbc92213a, 0xcb90311e )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
