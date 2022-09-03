# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.i
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.i instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.i, 0x32335678, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.i, 0x32335678, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.i, 0x00005678, 0x80008000, 0x80008000, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.i, 0xfffe5678, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 6, pv.cplxmul.h.i, 0x45773c88, 0x8b96fdf1, 0x2b73b2da, 0x01f93c88 )
  TEST_RRR_OP( 7, pv.cplxmul.h.i, 0x00a1fc8f, 0x0c2ef5b9, 0x9486abf2, 0x001cfc8f )
  TEST_RRR_OP( 8, pv.cplxmul.h.i, 0x52f60511, 0x8ac40e2f, 0x2e0faafe, 0x6d570511 )
  TEST_RRR_OP( 9, pv.cplxmul.h.i, 0xb859cbec, 0x208e8a54, 0x62354943, 0xf1f3cbec )
  TEST_RRR_OP( 10, pv.cplxmul.h.i, 0x1f7372a2, 0x8d731ea4, 0x2119e5b6, 0xc92b72a2 )
  TEST_RRR_OP( 11, pv.cplxmul.h.i, 0xd7bf2795, 0xc2a5e074, 0x65181ffe, 0xa01b2795 )
  TEST_RRR_OP( 12, pv.cplxmul.h.i, 0xb111fe9d, 0xc68f6387, 0x8a71e433, 0x7733fe9d )
  TEST_RRR_OP( 13, pv.cplxmul.h.i, 0xb265fa9d, 0x865637b0, 0x34ee69df, 0xc6cbfa9d )
  TEST_RRR_OP( 14, pv.cplxmul.h.i, 0x2929a3a7, 0x68d819cd, 0xb5f54479, 0x5ac9a3a7 )
  TEST_RRR_OP( 15, pv.cplxmul.h.i, 0xc26c7924, 0xd472d4a0, 0x75a23fd0, 0xfc787924 )
  TEST_RRR_OP( 16, pv.cplxmul.h.i, 0x5cad0244, 0xa2371d58, 0xfeb6811c, 0xf9160244 )
  TEST_RRR_OP( 17, pv.cplxmul.h.i, 0xc8f26854, 0xd44b16da, 0xbb9f7d7b, 0xbdcb6854 )
  TEST_RRR_OP( 18, pv.cplxmul.h.i, 0x596c2523, 0xdf0fb901, 0x81efb439, 0xf4c32523 )
  TEST_RRR_OP( 19, pv.cplxmul.h.i, 0x2ec4bf4c, 0x7f69da87, 0x9737102a, 0xc2ebbf4c )
  TEST_RRR_OP( 20, pv.cplxmul.h.i, 0x0d153642, 0xf8d50e79, 0x79ad0bff, 0x20ea3642 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.i, 0x21aad101, 0x8491d101, 0xbca2f6bd )
  TEST_RRR_SRC1_EQ_DEST( 22, pv.cplxmul.h.i, 0x15cba45f, 0x1318a45f, 0xcef6a6c3 )
  
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.i, 0xfc332249, 0x312817c9, 0xa4b12249 )
  TEST_RRR_SRC2_EQ_DEST( 24, pv.cplxmul.h.i, 0x11281a10, 0x5288ae13, 0xff731a10 )
  
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.i, 0xbb0d94d3, 0x292c94d3 )
  TEST_RRR_SRC12_EQ_DEST( 26, pv.cplxmul.h.i, 0xd9ffd20e, 0x34efd20e )
  
  TEST_RRR_DEST_BYPASS( 45, 0, pv.cplxmul.h.i, 0x3e5cb1fd, 0xf587b060, 0xac638183, 0x83b7b1fd )
  TEST_RRR_DEST_BYPASS( 46, 1, pv.cplxmul.h.i, 0x93eef90d, 0x7bc9fbe9, 0xd0738eae, 0x5f17f90d )
  TEST_RRR_DEST_BYPASS( 47, 2, pv.cplxmul.h.i, 0xff836cdd, 0x3534bc18, 0xeb57e476, 0xbb6e6cdd )
  TEST_RRR_DEST_BYPASS( 48, 0, pv.cplxmul.h.i, 0xfd385374, 0xe3e61f2f, 0x011c0de2, 0x3c655374 )
  TEST_RRR_DEST_BYPASS( 49, 1, pv.cplxmul.h.i, 0x0d0db3ac, 0x2842ecbf, 0x7483613b, 0x2288b3ac )
  TEST_RRR_DEST_BYPASS( 50, 2, pv.cplxmul.h.i, 0x393b8557, 0x48bc3e95, 0x7fc4f6c9, 0x82b68557 )
  TEST_RRR_SRC3_BYPASS( 51, 0, pv.cplxmul.h.i, 0xefb4be3e, 0x0674ea4e, 0x52a4d2a7, 0xbcc5be3e )
  TEST_RRR_SRC3_BYPASS( 52, 1, pv.cplxmul.h.i, 0xeea1f9a9, 0xcbc010b4, 0xf0512589, 0xa015f9a9 )
  TEST_RRR_SRC3_BYPASS( 53, 2, pv.cplxmul.h.i, 0xf1a90328, 0x01dde1c6, 0x42db6383, 0x6cec0328 )
  TEST_RRR_SRC3_BYPASS( 54, 0, pv.cplxmul.h.i, 0x23107f31, 0xa5fd2e72, 0x185fdab7, 0x3cfc7f31 )
  TEST_RRR_SRC3_BYPASS( 55, 1, pv.cplxmul.h.i, 0xcc08b4af, 0xe8083f46, 0x8cc6e555, 0x9978b4af )
  TEST_RRR_SRC3_BYPASS( 56, 2, pv.cplxmul.h.i, 0xaf18c11a, 0xa3313fdd, 0x817e1887, 0xc6c3c11a )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 27, 0, 0, pv.cplxmul.h.i, 0x0d42232a, 0x417de0b9, 0xe67b0dbb, 0xa54f232a )
  TEST_RRR_SRC12_BYPASS( 28, 0, 1, pv.cplxmul.h.i, 0xf0b1c286, 0xc57effc8, 0x3400214a, 0x2603c286 )
  TEST_RRR_SRC12_BYPASS( 29, 0, 2, pv.cplxmul.h.i, 0x2be10e44, 0xf41e3a07, 0x4d70a17c, 0x21da0e44 )
  TEST_RRR_SRC12_BYPASS( 30, 1, 0, pv.cplxmul.h.i, 0xc229b207, 0xa3fbbae6, 0x4207246f, 0xa990b207 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 1, pv.cplxmul.h.i, 0xf06e08f1, 0x0762104e, 0xbe2c8372, 0xabc708f1 )
  TEST_RRR_SRC12_BYPASS( 32, 1, 2, pv.cplxmul.h.i, 0x13ab8aa3, 0xf6861030, 0x6c42af3b, 0x2f238aa3 )
  TEST_RRR_SRC12_BYPASS( 33, 2, 0, pv.cplxmul.h.i, 0x257c3247, 0xb799c887, 0xad20fd3a, 0x25bb3247 )
  TEST_RRR_SRC12_BYPASS( 34, 2, 1, pv.cplxmul.h.i, 0x13c7a492, 0x1404b4bb, 0xf7e35ffb, 0x0809a492 )
  TEST_RRR_SRC12_BYPASS( 35, 2, 2, pv.cplxmul.h.i, 0xe5142bd0, 0x5776d458, 0xc8a1bcf7, 0x7fbf2bd0 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 0, pv.cplxmul.h.i, 0x3466de6a, 0xad7dab5e, 0xe74dc80c, 0xc5dbde6a )
  TEST_RRR_SRC12_BYPASS( 37, 0, 1, pv.cplxmul.h.i, 0x1b6b5ec8, 0xbfa1b8f7, 0xf14dd9b3, 0x80145ec8 )
  TEST_RRR_SRC12_BYPASS( 38, 0, 2, pv.cplxmul.h.i, 0x79adf71b, 0xa27696a9, 0x4ad3638b, 0x6b28f71b )
  TEST_RRR_SRC12_BYPASS( 39, 1, 0, pv.cplxmul.h.i, 0x25f11a3e, 0x7b8f0995, 0x1b5d252f, 0x15121a3e )
  TEST_RRR_SRC12_BYPASS( 40, 1, 1, pv.cplxmul.h.i, 0x095da04f, 0xc74c6973, 0x0ee60690, 0xa32aa04f )
  TEST_RRR_SRC12_BYPASS( 41, 1, 2, pv.cplxmul.h.i, 0x3d87fad2, 0x2913c9d4, 0x8c5b2738, 0xa9d6fad2 )
  TEST_RRR_SRC12_BYPASS( 42, 2, 0, pv.cplxmul.h.i, 0xe08b9b09, 0x66882335, 0xa119f952, 0x72619b09 )
  TEST_RRR_SRC12_BYPASS( 43, 2, 1, pv.cplxmul.h.i, 0x07fe9196, 0xdf38ae48, 0xec211252, 0xd1d59196 )
  TEST_RRR_SRC12_BYPASS( 44, 2, 2, pv.cplxmul.h.i, 0x0f6d4858, 0xdcac789c, 0x142f0d04, 0x86cd4858 )
  
  

  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.i, 0x0000c181, 0x32ef6d9b, 0xd2e3c181 )
  TEST_RRR_ZEROSRC1( 58, pv.cplxmul.h.i, 0x000077d3, 0x777dd34d, 0xab0e77d3 )
  
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.i, 0x00007029, 0xdf6d4ae9, 0x1ee87029 )
  TEST_RRR_ZEROSRC2( 60, pv.cplxmul.h.i, 0x0000de6a, 0x1d00d359, 0x0a3bde6a )
  
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.i, 0x08ca0000, 0x915b6440, 0x1cf51011 )
  TEST_RRR_ZEROSRC3( 62, pv.cplxmul.h.i, 0xf0650000, 0xd06cc3ba, 0x2605f9d0 )
  
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.i, 0x00001813, 0x3bf01813 )
  TEST_RRR_ZEROSRC12( 64, pv.cplxmul.h.i, 0x0000a001, 0x1154a001 )
  
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.i, 0x00000000 )
  TEST_RRR_ZEROSRC123( 66, pv.cplxmul.h.i, 0x00000000 )
  
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.i, 0xa490dcef, 0x18af441b )
  TEST_RRR_ZERODEST( 68, pv.cplxmul.h.i, 0x731997fd, 0xdad4d366 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
