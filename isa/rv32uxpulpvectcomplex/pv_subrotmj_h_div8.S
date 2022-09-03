# See LICENSE for license details.

#*****************************************************************************
# pv.subrotmj.h.div8
#-----------------------------------------------------------------------------
#
# Test pv.subrotmj.h.div8 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.subrotmj.h.div8, 0xf7770888, 0x55667788, 0x11223344 )
  TEST_RR_OP( 3, pv.subrotmj.h.div8, 0x0888f777, 0x11223344, 0x55667788 )
  TEST_RR_OP( 4, pv.subrotmj.h.div8, 0xffffffff, 0x7fff8000, 0x80007fff )
  TEST_RR_OP( 5, pv.subrotmj.h.div8, 0x0244f04f, 0xabd4125e, 0x29592480 )
  TEST_RR_OP( 6, pv.subrotmj.h.div8, 0x0cbb05fa, 0x3d0df4ac, 0x0d3d5a8b )
  TEST_RR_OP( 7, pv.subrotmj.h.div8, 0x05aaf4e8, 0xc56e8591, 0x1e2ab2e6 )
  TEST_RR_OP( 8, pv.subrotmj.h.div8, 0x052b01b2, 0x6707dba3, 0x59750502 )
  TEST_RR_OP( 9, pv.subrotmj.h.div8, 0xf191fd12, 0xa4c009f6, 0xbc299681 )
  TEST_RR_OP( 10, pv.subrotmj.h.div8, 0xf0140eaa, 0x21ab8d8f, 0xac5b0e31 )
  TEST_RR_OP( 11, pv.subrotmj.h.div8, 0x0c8304b8, 0x4891fe8e, 0x22cb62ad )
  TEST_RR_OP( 12, pv.subrotmj.h.div8, 0x0863f4e7, 0x0263e766, 0x5b292a84 )
  TEST_RR_OP( 13, pv.subrotmj.h.div8, 0xf6cd09af, 0xd50402fc, 0x878cb969 )
  TEST_RR_OP( 14, pv.subrotmj.h.div8, 0x0bbff8c1, 0x4b2705d0, 0x851863ce )
  TEST_RR_OP( 15, pv.subrotmj.h.div8, 0x0012f31f, 0xdac06ff5, 0x41c5708b )
  TEST_RR_OP( 16, pv.subrotmj.h.div8, 0x071ef1a6, 0x80bb8c49, 0xf387c53e )
  TEST_RR_OP( 17, pv.subrotmj.h.div8, 0xf042fc50, 0x3848bcf2, 0x55c13f07 )
  TEST_RR_OP( 18, pv.subrotmj.h.div8, 0xfb910258, 0x47cfe1d7, 0x350abe61 )
  TEST_RR_OP( 19, pv.subrotmj.h.div8, 0x01460aeb, 0x12cd830d, 0xbb6e8d41 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.subrotmj.h.div8, 0xf1410aab, 0x9d44786e, 0x47ec027c )
  TEST_RR_SRC1_EQ_DEST( 21, pv.subrotmj.h.div8, 0x0fef0620, 0x9419bf49, 0x63193ec6 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.subrotmj.h.div8, 0x08da0915, 0x1fe87d07, 0xd73fc3da )
  TEST_RR_SRC2_EQ_DEST( 23, pv.subrotmj.h.div8, 0x08320427, 0xee03305d, 0xccc771f2 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.subrotmj.h.div8, 0x00000000, 0x73a1c4fd )
  TEST_RR_SRC12_EQ_DEST( 25, pv.subrotmj.h.div8, 0x00000000, 0x350f75bd )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.subrotmj.h.div8, 0x00000000, 0xd7c800df, 0xd7c800df )
  TEST_RR_DEST_BYPASS( 45, 1, pv.subrotmj.h.div8, 0x00000000, 0xef483514, 0xef483514 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.subrotmj.h.div8, 0x00000000, 0xcfad9588, 0xcfad9588 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.subrotmj.h.div8, 0x00000000, 0x0b6689a8, 0x0b6689a8 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.subrotmj.h.div8, 0x00000000, 0xb05beb1b, 0xb05beb1b )
  TEST_RR_DEST_BYPASS( 49, 2, pv.subrotmj.h.div8, 0x00000000, 0x585cd4e8, 0x585cd4e8 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.subrotmj.h.div8, 0xf5f4fae0, 0x88df153d, 0xb1d9c4e0 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.subrotmj.h.div8, 0xf25b0a68, 0x4c3346ac, 0xf8ecd984 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.subrotmj.h.div8, 0xfef00698, 0x27dde0df, 0xf31dd866 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.subrotmj.h.div8, 0x0b83fff7, 0x7ea312c5, 0x7ee96ee1 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.subrotmj.h.div8, 0xf969036d, 0x640de10d, 0x48a2ac5a )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.subrotmj.h.div8, 0x0054f739, 0x3e6b3a75, 0x84a13d17 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.subrotmj.h.div8, 0xf2a7024c, 0x720bdc73, 0x5fa871ad )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.subrotmj.h.div8, 0x0f260e5e, 0xb28a8459, 0x3f94fd90 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.subrotmj.h.div8, 0x0239f8e2, 0x4717b616, 0x8000c7e4 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.subrotmj.h.div8, 0x07350d00, 0x05a90f48, 0x9da548f0 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.subrotmj.h.div8, 0xf102f0ba, 0x8844dcd1, 0x027164e5 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.subrotmj.h.div8, 0xfdf404e2, 0xfa18a7e1, 0xd3019785 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.subrotmj.h.div8, 0xf453fd3d, 0xd0ee1859, 0xe706baf7 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.subrotmj.h.div8, 0x0728fb82, 0x034f72c2, 0x273eac09 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.subrotmj.h.div8, 0xfeb90fb9, 0xe04f9ad1, 0x62859099 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.subrotmj.h.div8, 0xf4950023, 0xe4249713, 0xe3063bbb )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.subrotmj.h.div8, 0x0784fa3f, 0xbbde913a, 0xe9e1cd5d )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.subrotmj.h.div8, 0x04e0f01e, 0x85efcc34, 0x04f8f334 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.subrotmj.h.div8, 0x0d1c0e2e, 0x8e8968e7 )
  TEST_RR_ZEROSRC1( 51, pv.subrotmj.h.div8, 0xf0b9f4be, 0x5a0b85cc )
  
  TEST_RR_ZEROSRC2( 52, pv.subrotmj.h.div8, 0xf1bf025e, 0x12f07205 )
  TEST_RR_ZEROSRC2( 53, pv.subrotmj.h.div8, 0xfb320407, 0x203f266f )
  
  TEST_RR_ZEROSRC12( 54, pv.subrotmj.h.div8, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.subrotmj.h.div8, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.subrotmj.h.div8, 0xb204e215, 0x837d261b )
  TEST_RR_ZERODEST( 57, pv.subrotmj.h.div8, 0xccb73d44, 0x4eb33773 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
