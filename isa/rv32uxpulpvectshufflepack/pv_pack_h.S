# See LICENSE for license details.

#*****************************************************************************
# pv.pack.h
#-----------------------------------------------------------------------------
#
# Test pv.pack.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.pack.h, 0x4433ccdd, 0x44332211, 0xccddeeff )
  TEST_RR_OP( 3, pv.pack.h, 0xd135dc5e, 0xd135ef67, 0xdc5ec364 )
  TEST_RR_OP( 4, pv.pack.h, 0xab9ba8d6, 0xab9b5e4d, 0xa8d6862c )
  TEST_RR_OP( 5, pv.pack.h, 0xa1f038b2, 0xa1f06ca0, 0x38b28a7d )
  TEST_RR_OP( 6, pv.pack.h, 0xdb8fc462, 0xdb8fe827, 0xc462d0f1 )
  TEST_RR_OP( 7, pv.pack.h, 0x7e50fd45, 0x7e508c42, 0xfd450db9 )
  TEST_RR_OP( 8, pv.pack.h, 0x5ef31a95, 0x5ef3ff5a, 0x1a95d7fd )
  TEST_RR_OP( 9, pv.pack.h, 0x0bbd93d3, 0x0bbdec02, 0x93d345ac )
  TEST_RR_OP( 10, pv.pack.h, 0x359675df, 0x359680c0, 0x75df865b )
  TEST_RR_OP( 11, pv.pack.h, 0xe689ea3c, 0xe68970d3, 0xea3cef9b )
  TEST_RR_OP( 12, pv.pack.h, 0x7ef15cc3, 0x7ef10f71, 0x5cc3ba7c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 13, pv.pack.h, 0x39bf6538, 0x39bf0d03, 0x65389f3c )
  TEST_RR_SRC1_EQ_DEST( 14, pv.pack.h, 0x13998103, 0x13998b7e, 0x810328a2 )
  
  TEST_RR_SRC2_EQ_DEST( 15, pv.pack.h, 0xa9aa713b, 0xa9aa63a2, 0x713bfd82 )
  TEST_RR_SRC2_EQ_DEST( 16, pv.pack.h, 0x6799e437, 0x67994c70, 0xe4377dc9 )
  
  TEST_RR_SRC12_EQ_DEST( 17, pv.pack.h, 0x1cc91cc9, 0x1cc9ee7c )
  TEST_RR_SRC12_EQ_DEST( 18, pv.pack.h, 0x14bc14bc, 0x14bc4107 )
  
  TEST_RR_DEST_BYPASS( 37, 0, pv.pack.h, 0x79dc79dc, 0x79dc19bb, 0x79dc19bb )
  TEST_RR_DEST_BYPASS( 38, 1, pv.pack.h, 0x7e9b7e9b, 0x7e9bebe2, 0x7e9bebe2 )
  TEST_RR_DEST_BYPASS( 39, 2, pv.pack.h, 0x1ec41ec4, 0x1ec41f62, 0x1ec41f62 )
  TEST_RR_DEST_BYPASS( 40, 0, pv.pack.h, 0x23152315, 0x2315f11f, 0x2315f11f )
  TEST_RR_DEST_BYPASS( 41, 1, pv.pack.h, 0x11f511f5, 0x11f5ae51, 0x11f5ae51 )
  TEST_RR_DEST_BYPASS( 42, 2, pv.pack.h, 0xf12bf12b, 0xf12b6c68, 0xf12b6c68 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 19, 0, 0, pv.pack.h, 0xa9b68c55, 0xa9b61e7c, 0x8c55ff0f )
  TEST_RR_SRC12_BYPASS( 20, 0, 1, pv.pack.h, 0x9a963f62, 0x9a969833, 0x3f624fee )
  TEST_RR_SRC12_BYPASS( 21, 0, 2, pv.pack.h, 0x5cdfa48b, 0x5cdf8250, 0xa48bf77c )
  TEST_RR_SRC12_BYPASS( 22, 1, 0, pv.pack.h, 0xa42933fa, 0xa429ca9e, 0x33fa3d99 )
  TEST_RR_SRC12_BYPASS( 23, 1, 1, pv.pack.h, 0xb311d308, 0xb3116ee3, 0xd3088aa9 )
  TEST_RR_SRC12_BYPASS( 24, 1, 2, pv.pack.h, 0xf7f3ff4a, 0xf7f3fb47, 0xff4af9d8 )
  TEST_RR_SRC12_BYPASS( 25, 2, 0, pv.pack.h, 0x7d7f6ffa, 0x7d7f962a, 0x6ffa2000 )
  TEST_RR_SRC12_BYPASS( 26, 2, 1, pv.pack.h, 0x433c841c, 0x433ca631, 0x841c160a )
  TEST_RR_SRC12_BYPASS( 27, 2, 2, pv.pack.h, 0xeb4ea02c, 0xeb4ebfad, 0xa02c866a )
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.pack.h, 0xb2ecff38, 0xb2ec65b2, 0xff38ad03 )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.pack.h, 0xa7de86a2, 0xa7dee1b5, 0x86a27082 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.pack.h, 0xf5ea2f3f, 0xf5ea52d0, 0x2f3f8b5e )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.pack.h, 0xedf0e581, 0xedf06f45, 0xe581b24f )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.pack.h, 0x60fd0487, 0x60fd7426, 0x04877992 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.pack.h, 0xa98535ec, 0xa9850887, 0x35eceed1 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.pack.h, 0x97ea3d09, 0x97eaa275, 0x3d093cd4 )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.pack.h, 0x07ff63f3, 0x07ff8e0e, 0x63f33a67 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.pack.h, 0xa7b44544, 0xa7b410f4, 0x4544543a )
  
  

  TEST_RR_ZEROSRC1( 43, pv.pack.h, 0x0000c032, 0xc0320e31 )
  TEST_RR_ZEROSRC1( 44, pv.pack.h, 0x0000c2ca, 0xc2ca7a8e )
  
  TEST_RR_ZEROSRC2( 45, pv.pack.h, 0xadba0000, 0xadba871a )
  TEST_RR_ZEROSRC2( 46, pv.pack.h, 0x0d4e0000, 0x0d4e51f0 )
  
  TEST_RR_ZEROSRC12( 47, pv.pack.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 48, pv.pack.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 49, pv.pack.h, 0x98198e9b, 0x24231b40 )
  TEST_RR_ZERODEST( 50, pv.pack.h, 0xf2c5a623, 0xc78dd7e3 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
