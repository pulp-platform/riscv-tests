# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.r.div2
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.r.div2 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.r.div2, 0x12341238, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.r.div2, 0x12341238, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.r.div2, 0x12340000, 0x80008000, 0x80008000, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.r.div2, 0x12340000, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 6, pv.cplxmul.h.r.div2, 0x5694ec8f, 0x1a145c29, 0x9bdfadac, 0x5694698a )
  TEST_RRR_OP( 7, pv.cplxmul.h.r.div2, 0x6019c937, 0x6e01ec4b, 0x75053a73, 0x6019579a )
  TEST_RRR_OP( 8, pv.cplxmul.h.r.div2, 0xfaba1f2b, 0x93485cbe, 0x7313cf23, 0xfaba52f0 )
  TEST_RRR_OP( 9, pv.cplxmul.h.r.div2, 0x6d7b0300, 0xafea07f9, 0x101ebe77, 0x6d7bbf12 )
  TEST_RRR_OP( 10, pv.cplxmul.h.r.div2, 0xf1c7e6e7, 0xcd25ee8f, 0x91242d21, 0xf1c7fb2d )
  TEST_RRR_OP( 11, pv.cplxmul.h.r.div2, 0x8ea1c8dc, 0x4f41d06d, 0x733b68bd, 0x8ea186ac )
  TEST_RRR_OP( 12, pv.cplxmul.h.r.div2, 0x70d904b1, 0x48a7dfd5, 0x0902c64c, 0x70d9f66a )
  TEST_RRR_OP( 13, pv.cplxmul.h.r.div2, 0x20dfdd93, 0x86643cf2, 0x92d74938, 0x20dfff07 )
  TEST_RRR_OP( 14, pv.cplxmul.h.r.div2, 0xa4940649, 0x942f115e, 0x0e7602e2, 0xa49475f3 )
  TEST_RRR_OP( 15, pv.cplxmul.h.r.div2, 0xa242ebbd, 0x8d2ad40b, 0xe6f3348e, 0xa2425434 )
  TEST_RRR_OP( 16, pv.cplxmul.h.r.div2, 0x53fe1ccd, 0x55cb3845, 0x93fade56, 0x53fed252 )
  TEST_RRR_OP( 17, pv.cplxmul.h.r.div2, 0x675f220a, 0xb7ee80b1, 0x2f3dd64b, 0x675f90b6 )
  TEST_RRR_OP( 18, pv.cplxmul.h.r.div2, 0xcb22f649, 0x17b21173, 0x2423a29a, 0xcb228496 )
  TEST_RRR_OP( 19, pv.cplxmul.h.r.div2, 0xbd370fe1, 0x10d7b43f, 0xfac6cb7f, 0xbd372626 )
  TEST_RRR_OP( 20, pv.cplxmul.h.r.div2, 0x9ba60237, 0xe9cc0b7e, 0x1ecff5da, 0x9ba6a1f0 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.r.div2, 0x4838fd1f, 0x4838c537, 0xf1f51dc8 )
  TEST_RRR_SRC1_EQ_DEST( 22, pv.cplxmul.h.r.div2, 0xbf950476, 0xbf952eea, 0x35a9cead )
  
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.r.div2, 0x4669fdd1, 0xb8098446, 0x46692d77 )
  TEST_RRR_SRC2_EQ_DEST( 24, pv.cplxmul.h.r.div2, 0x2897ea53, 0x3904e381, 0x2897717b )
  
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.r.div2, 0x32c100f7, 0x32c13523 )
  TEST_RRR_SRC12_EQ_DEST( 26, pv.cplxmul.h.r.div2, 0x638fe064, 0x638f2aac )
  
  TEST_RRR_DEST_BYPASS( 45, 0, pv.cplxmul.h.r.div2, 0x980ed8c7, 0x060cadb4, 0x5b837349, 0x980ea952 )
  TEST_RRR_DEST_BYPASS( 46, 1, pv.cplxmul.h.r.div2, 0xbfa6fe24, 0x3d411404, 0x1f9248db, 0xbfa69e00 )
  TEST_RRR_DEST_BYPASS( 47, 2, pv.cplxmul.h.r.div2, 0x45b0ecb9, 0xdd49fafe, 0x83897aa7, 0x45b0a1d8 )
  TEST_RRR_DEST_BYPASS( 48, 0, pv.cplxmul.h.r.div2, 0x3515f742, 0x20dbc7c7, 0xd9993e3d, 0x3515b9d7 )
  TEST_RRR_DEST_BYPASS( 49, 1, pv.cplxmul.h.r.div2, 0xb1f41146, 0x6883e778, 0xbaf571da, 0xb1f44a8d )
  TEST_RRR_DEST_BYPASS( 50, 2, pv.cplxmul.h.r.div2, 0xb69212f0, 0x80bff852, 0x212dae62, 0xb692cf6f )
  TEST_RRR_SRC3_BYPASS( 51, 0, pv.cplxmul.h.r.div2, 0x3eb72cbd, 0x82a5a7c3, 0x70181d73, 0x3eb748f6 )
  TEST_RRR_SRC3_BYPASS( 52, 1, pv.cplxmul.h.r.div2, 0xafca0a88, 0xc00b6408, 0x7541cffe, 0xafcadc2c )
  TEST_RRR_SRC3_BYPASS( 53, 2, pv.cplxmul.h.r.div2, 0xb90f0db4, 0x3a82c16b, 0xc2a8014a, 0xb90f2462 )
  TEST_RRR_SRC3_BYPASS( 54, 0, pv.cplxmul.h.r.div2, 0x7782f9e9, 0xe31b1e52, 0x4aab856e, 0x77825ce7 )
  TEST_RRR_SRC3_BYPASS( 55, 1, pv.cplxmul.h.r.div2, 0x70f60943, 0xec92d0d5, 0x67d8f881, 0x70f6a582 )
  TEST_RRR_SRC3_BYPASS( 56, 2, pv.cplxmul.h.r.div2, 0x1f8e1392, 0xb163217f, 0x4c02e336, 0x1f8e9ea2 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 27, 0, 0, pv.cplxmul.h.r.div2, 0x4d991615, 0x6281b269, 0xcf92f49f, 0x4d9939b2 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 1, pv.cplxmul.h.r.div2, 0x9df03714, 0x2c52b6cb, 0x8e29844e, 0x9df06174 )
  TEST_RRR_SRC12_BYPASS( 29, 0, 2, pv.cplxmul.h.r.div2, 0x7484f129, 0x0420d005, 0xf2d8504d, 0x7484a140 )
  TEST_RRR_SRC12_BYPASS( 30, 1, 0, pv.cplxmul.h.r.div2, 0x2cf8fa50, 0x70cfeb6b, 0xfc795a0f, 0x2cf8b787 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 1, pv.cplxmul.h.r.div2, 0x1dc3caf5, 0x9403bfc9, 0xba215df6, 0x1dc30621 )
  TEST_RRR_SRC12_BYPASS( 32, 1, 2, pv.cplxmul.h.r.div2, 0x909550e4, 0x7a358ce9, 0xbf4390cf, 0x9095e2ec )
  TEST_RRR_SRC12_BYPASS( 33, 2, 0, pv.cplxmul.h.r.div2, 0x5669b884, 0x48b46abd, 0x5b3e92b5, 0x56698538 )
  TEST_RRR_SRC12_BYPASS( 34, 2, 1, pv.cplxmul.h.r.div2, 0x69d7cb80, 0x5acdb22f, 0x3ea4639e, 0x69d707f6 )
  TEST_RRR_SRC12_BYPASS( 35, 2, 2, pv.cplxmul.h.r.div2, 0x0b1fecad, 0x5566b014, 0xf4584a58, 0x0b1f1e1a )
  TEST_RRR_SRC12_BYPASS( 36, 0, 0, pv.cplxmul.h.r.div2, 0xbf1805ae, 0xe189ea43, 0xf618af3a, 0xbf181b3a )
  TEST_RRR_SRC12_BYPASS( 37, 0, 1, pv.cplxmul.h.r.div2, 0x29fb41bf, 0x59bd6819, 0x9efd4e10, 0x29fb09e4 )
  TEST_RRR_SRC12_BYPASS( 38, 0, 2, pv.cplxmul.h.r.div2, 0x69c1e572, 0x693cf49e, 0x4bae9980, 0x69c11597 )
  TEST_RRR_SRC12_BYPASS( 39, 1, 0, pv.cplxmul.h.r.div2, 0x5491e422, 0x6f26d7df, 0x33cb224d, 0x5491a604 )
  TEST_RRR_SRC12_BYPASS( 40, 1, 1, pv.cplxmul.h.r.div2, 0xad9fcdc2, 0xa3722a1a, 0x9989afc4, 0xad9f7b19 )
  TEST_RRR_SRC12_BYPASS( 41, 1, 2, pv.cplxmul.h.r.div2, 0x5817174f, 0xd66da47e, 0xbddfa0bd, 0x58177c1b )
  TEST_RRR_SRC12_BYPASS( 42, 2, 0, pv.cplxmul.h.r.div2, 0xa02d1e2f, 0x51118e0c, 0xf3a9c4f8, 0xa02dfb3f )
  TEST_RRR_SRC12_BYPASS( 43, 2, 1, pv.cplxmul.h.r.div2, 0xb38dea94, 0x86c4c98b, 0xf23d460d, 0xb38d82eb )
  TEST_RRR_SRC12_BYPASS( 44, 2, 2, pv.cplxmul.h.r.div2, 0xc1a5f977, 0x4d42d4b6, 0xd0d97acb, 0xc1a5d034 )
  
  

  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.r.div2, 0x0cef0000, 0xecd1dca4, 0x0cef9645 )
  TEST_RRR_ZEROSRC1( 58, pv.cplxmul.h.r.div2, 0x28cf0000, 0x789d0fcf, 0x28cfe613 )
  
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.r.div2, 0xb41f0000, 0xada7e900, 0xb41f08f5 )
  TEST_RRR_ZEROSRC2( 60, pv.cplxmul.h.r.div2, 0xd1300000, 0x3e192324, 0xd13071c0 )
  
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.r.div2, 0x0000dfdc, 0xf1536a19, 0xaaa9be41 )
  TEST_RRR_ZEROSRC3( 62, pv.cplxmul.h.r.div2, 0x000006e4, 0xe31cd6d2, 0x5b631543 )
  
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.r.div2, 0xb1fa0000, 0xb1fa0702 )
  TEST_RRR_ZEROSRC12( 64, pv.cplxmul.h.r.div2, 0xb0700000, 0xb07007b2 )
  
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.r.div2, 0x00000000 )
  TEST_RRR_ZEROSRC123( 66, pv.cplxmul.h.r.div2, 0x00000000 )
  
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.r.div2, 0x42fee3a1, 0xfe08dd48 )
  TEST_RRR_ZERODEST( 68, pv.cplxmul.h.r.div2, 0x04ba420a, 0xe76d8edb )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
