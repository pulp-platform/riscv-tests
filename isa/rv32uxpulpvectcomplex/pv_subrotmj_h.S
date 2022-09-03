# See LICENSE for license details.

#*****************************************************************************
# pv.subrotmj.h
#-----------------------------------------------------------------------------
#
# Test pv.subrotmj.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.subrotmj.h, 0xbbbc4444, 0x55667788, 0x11223344 )
  TEST_RR_OP( 3, pv.subrotmj.h, 0x4444bbbc, 0x11223344, 0x55667788 )
  TEST_RR_OP( 4, pv.subrotmj.h, 0x00000000, 0x80008000, 0x80008000 )
  TEST_RR_OP( 5, pv.subrotmj.h, 0xffffffff, 0x7fff8000, 0x80007fff )
  TEST_RR_OP( 6, pv.subrotmj.h, 0x420e4afa, 0x35eee5aa, 0xeaf427b8 )
  TEST_RR_OP( 7, pv.subrotmj.h, 0x805cdaba, 0x7021f572, 0x956775ce )
  TEST_RR_OP( 8, pv.subrotmj.h, 0x3dea760d, 0xe44b0f12, 0x6e3e4cfc )
  TEST_RR_OP( 9, pv.subrotmj.h, 0x8bd37cad, 0xb8432e46, 0x3b96ba19 )
  TEST_RR_OP( 10, pv.subrotmj.h, 0x255211f8, 0xb9ec1a78, 0xa7f43fca )
  TEST_RR_OP( 11, pv.subrotmj.h, 0x132f071b, 0x89f081d7, 0x82d59506 )
  TEST_RR_OP( 12, pv.subrotmj.h, 0x08479a87, 0x5ad16df1, 0xc04a7638 )
  TEST_RR_OP( 13, pv.subrotmj.h, 0x9a0fc219, 0x263d6136, 0x6424fb45 )
  TEST_RR_OP( 14, pv.subrotmj.h, 0xacaffe7e, 0x250cae6a, 0x268e5b19 )
  TEST_RR_OP( 15, pv.subrotmj.h, 0x3eeea187, 0x26a17936, 0x851ab824 )
  TEST_RR_OP( 16, pv.subrotmj.h, 0xef3c7b53, 0xa054fb67, 0x2501eaa3 )
  TEST_RR_OP( 17, pv.subrotmj.h, 0x041093e1, 0xb6d55e95, 0x22f462a5 )
  TEST_RR_OP( 18, pv.subrotmj.h, 0xe6ed0f4d, 0xa4f6410c, 0x95a927f9 )
  TEST_RR_OP( 19, pv.subrotmj.h, 0x0fb50fed, 0xa7b52d1c, 0x97c83cd1 )
  TEST_RR_OP( 20, pv.subrotmj.h, 0xfe129742, 0x20e24e85, 0x89a04c97 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 21, pv.subrotmj.h, 0x9997841b, 0x0571b0a1, 0x81564a38 )
  TEST_RR_SRC1_EQ_DEST( 22, pv.subrotmj.h, 0x5c81646c, 0x6395f8af, 0xff295530 )
  
  TEST_RR_SRC2_EQ_DEST( 23, pv.subrotmj.h, 0xfa5a1542, 0x5aa3817d, 0x45617bd7 )
  TEST_RR_SRC2_EQ_DEST( 24, pv.subrotmj.h, 0x2c239f24, 0x659e35dc, 0xc67a61ff )
  
  TEST_RR_SRC12_EQ_DEST( 25, pv.subrotmj.h, 0x00000000, 0x24604eff )
  TEST_RR_SRC12_EQ_DEST( 26, pv.subrotmj.h, 0x00000000, 0xa4fab605 )
  
  TEST_RR_DEST_BYPASS( 45, 0, pv.subrotmj.h, 0x00000000, 0xbc5d2aff, 0xbc5d2aff )
  TEST_RR_DEST_BYPASS( 46, 1, pv.subrotmj.h, 0x00000000, 0xdee4954c, 0xdee4954c )
  TEST_RR_DEST_BYPASS( 47, 2, pv.subrotmj.h, 0x00000000, 0x0f4fef48, 0x0f4fef48 )
  TEST_RR_DEST_BYPASS( 48, 0, pv.subrotmj.h, 0x00000000, 0xe8d8770c, 0xe8d8770c )
  TEST_RR_DEST_BYPASS( 49, 1, pv.subrotmj.h, 0x00000000, 0x2a6c2cac, 0x2a6c2cac )
  TEST_RR_DEST_BYPASS( 50, 2, pv.subrotmj.h, 0x00000000, 0x3e42a58a, 0x3e42a58a )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 27, 0, 0, pv.subrotmj.h, 0xc8d79a67, 0xd9a791c1, 0x3f405a98 )
  TEST_RR_SRC12_BYPASS( 28, 0, 1, pv.subrotmj.h, 0xa42603c7, 0x9689a841, 0x92c24c67 )
  TEST_RR_SRC12_BYPASS( 29, 0, 2, pv.subrotmj.h, 0x74ac197e, 0x5c993b08, 0x431bafb4 )
  TEST_RR_SRC12_BYPASS( 30, 1, 0, pv.subrotmj.h, 0x469c046b, 0x1f9e8c6c, 0x1b33d308 )
  TEST_RR_SRC12_BYPASS( 31, 1, 1, pv.subrotmj.h, 0x42c6a206, 0x08c7d9e8, 0x66c11cae )
  TEST_RR_SRC12_BYPASS( 32, 1, 2, pv.subrotmj.h, 0x3b0d9d47, 0x5d1dbe0e, 0xbfd6f91b )
  TEST_RR_SRC12_BYPASS( 33, 2, 0, pv.subrotmj.h, 0x46c86cb4, 0x049a601f, 0x97e6a6e7 )
  TEST_RR_SRC12_BYPASS( 34, 2, 1, pv.subrotmj.h, 0x7ab3c3c1, 0x9d19c9cd, 0xd9584480 )
  TEST_RR_SRC12_BYPASS( 35, 2, 2, pv.subrotmj.h, 0x457aaa1f, 0x600183fa, 0xb5e2c974 )
  TEST_RR_SRC12_BYPASS( 36, 0, 0, pv.subrotmj.h, 0xfb77aab4, 0xc1793a31, 0x16c535a8 )
  TEST_RR_SRC12_BYPASS( 37, 0, 1, pv.subrotmj.h, 0x314f1727, 0x46ee0aec, 0x2fc73c3b )
  TEST_RR_SRC12_BYPASS( 38, 0, 2, pv.subrotmj.h, 0xabc00e3e, 0xb8996a9d, 0xaa5b165d )
  TEST_RR_SRC12_BYPASS( 39, 1, 0, pv.subrotmj.h, 0x0ea34d0d, 0xe3eaf839, 0x96dd06dc )
  TEST_RR_SRC12_BYPASS( 40, 1, 1, pv.subrotmj.h, 0xdd2bc34d, 0x18d2a248, 0x55857f73 )
  TEST_RR_SRC12_BYPASS( 41, 1, 2, pv.subrotmj.h, 0x2f4a02c8, 0x1c725f0c, 0x19aa8e56 )
  TEST_RR_SRC12_BYPASS( 42, 2, 0, pv.subrotmj.h, 0x84bd32fc, 0x5552912b, 0x225615e8 )
  TEST_RR_SRC12_BYPASS( 43, 2, 1, pv.subrotmj.h, 0xd36b2233, 0xa16ce00b, 0x7f39b376 )
  TEST_RR_SRC12_BYPASS( 44, 2, 2, pv.subrotmj.h, 0xbd95b8a4, 0x6bb4144a, 0xb310d1df )
  
  

  TEST_RR_ZEROSRC1( 51, pv.subrotmj.h, 0x4515dfd1, 0x202f4515 )
  TEST_RR_ZEROSRC1( 52, pv.subrotmj.h, 0x251f18e8, 0xe718251f )
  
  TEST_RR_ZEROSRC2( 53, pv.subrotmj.h, 0x35eb8443, 0x8443ca15 )
  TEST_RR_ZEROSRC2( 54, pv.subrotmj.h, 0xa86847e0, 0x47e05798 )
  
  TEST_RR_ZEROSRC12( 55, pv.subrotmj.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 56, pv.subrotmj.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 57, pv.subrotmj.h, 0xeaa5d512, 0xd875bade )
  TEST_RR_ZERODEST( 58, pv.subrotmj.h, 0x5b716c92, 0xb93bf3ef )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
