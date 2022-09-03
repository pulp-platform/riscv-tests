# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.r
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.r instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.r, 0x12342471, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.r, 0x12342471, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.r, 0x12340000, 0x80008000, 0x80008000, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.r, 0x12340000, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 6, pv.cplxmul.h.r, 0x939e2b8f, 0x5f553f93, 0xd481167c, 0x939e202b )
  TEST_RRR_OP( 7, pv.cplxmul.h.r, 0x4edb85d4, 0x6058b1a7, 0x41f5767c, 0x4edb396d )
  TEST_RRR_OP( 8, pv.cplxmul.h.r, 0x13ce32c3, 0x5fc60bff, 0xc91b6763, 0x13ced530 )
  TEST_RRR_OP( 9, pv.cplxmul.h.r, 0xb63e6b5c, 0x3ccba9ac, 0x8e2ab0fb, 0xb63ea96c )
  TEST_RRR_OP( 10, pv.cplxmul.h.r, 0x0a9723e4, 0x67026ff1, 0x11923936, 0x0a97b806 )
  TEST_RRR_OP( 11, pv.cplxmul.h.r, 0x1e09ffed, 0xd3aeea4a, 0x0b371753, 0x1e09ad24 )
  TEST_RRR_OP( 12, pv.cplxmul.h.r, 0x6122c2d4, 0xefeb6e69, 0xfc04b9aa, 0x6122f3ab )
  TEST_RRR_OP( 13, pv.cplxmul.h.r, 0x99422f83, 0x54530a83, 0xb04ec345, 0x9942f8d0 )
  TEST_RRR_OP( 14, pv.cplxmul.h.r, 0xdc821780, 0x210cb644, 0x02ccd5f2, 0xdc82adb5 )
  TEST_RRR_OP( 15, pv.cplxmul.h.r, 0xf564e688, 0xe9ce403e, 0x13eec65f, 0xf5640889 )
  TEST_RRR_OP( 16, pv.cplxmul.h.r, 0xfec82810, 0x1c8c604d, 0x70bc56ac, 0xfec8ef37 )
  TEST_RRR_OP( 17, pv.cplxmul.h.r, 0xa4b20dab, 0x1084afd6, 0x17dfe542, 0xa4b24cd5 )
  TEST_RRR_OP( 18, pv.cplxmul.h.r, 0x1263d5c9, 0x3de4286e, 0x3d5fd84d, 0x1263cedb )
  TEST_RRR_OP( 19, pv.cplxmul.h.r, 0x89c732fa, 0x0d8ebfa9, 0x23ed9304, 0x89c7e4dd )
  TEST_RRR_OP( 20, pv.cplxmul.h.r, 0xf6b90a0b, 0xf740d3e3, 0x38b8ee1c, 0xf6b916e4 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.r, 0x2e83ded5, 0x2e832212, 0x23a8b413 )
  TEST_RRR_SRC1_EQ_DEST( 22, pv.cplxmul.h.r, 0x06c10848, 0x06c1cf8b, 0xef7eec6d )
  
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.r, 0xfcaf35b0, 0x7c9193e2, 0xfcafc442 )
  TEST_RRR_SRC2_EQ_DEST( 24, pv.cplxmul.h.r, 0x728ea4f6, 0x61edec50, 0x728e1615 )
  
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.r, 0x56e0d26b, 0x56e0d69c )
  TEST_RRR_SRC12_EQ_DEST( 26, pv.cplxmul.h.r, 0xa981cca6, 0xa981e1da )
  
  TEST_RRR_DEST_BYPASS( 45, 0, pv.cplxmul.h.r, 0x0456debe, 0xb5a9d76a, 0xf8375a9f, 0x0456d2d4 )
  TEST_RRR_DEST_BYPASS( 46, 1, pv.cplxmul.h.r, 0xefc13439, 0x56c38cba, 0x814b2561, 0xefc153f3 )
  TEST_RRR_DEST_BYPASS( 47, 2, pv.cplxmul.h.r, 0x0bdae4e1, 0xa2b93a35, 0xc3082610, 0x0bda1eaf )
  TEST_RRR_DEST_BYPASS( 48, 0, pv.cplxmul.h.r, 0xdceab5ec, 0xb64223e5, 0x8b5fe774, 0xdcea9f5a )
  TEST_RRR_DEST_BYPASS( 49, 1, pv.cplxmul.h.r, 0xca2ed9b0, 0xd412a412, 0x1f27443a, 0xca2e4b17 )
  TEST_RRR_DEST_BYPASS( 50, 2, pv.cplxmul.h.r, 0x4d9029ea, 0x9a2da4c4, 0x347effc7, 0x4d90d8d4 )
  TEST_RRR_SRC3_BYPASS( 51, 0, pv.cplxmul.h.r, 0x1b136354, 0x7debf55a, 0x9b13ff6d, 0x1b13335e )
  TEST_RRR_SRC3_BYPASS( 52, 1, pv.cplxmul.h.r, 0x64ff64c8, 0x933960da, 0x64f713cd, 0x64ff5a13 )
  TEST_RRR_SRC3_BYPASS( 53, 2, pv.cplxmul.h.r, 0x6da7dfdb, 0xbf1b617f, 0x5f64964f, 0x6da7ff23 )
  TEST_RRR_SRC3_BYPASS( 54, 0, pv.cplxmul.h.r, 0xaae0bcd6, 0x9bb4e261, 0xafff1354, 0xaae0a5fd )
  TEST_RRR_SRC3_BYPASS( 55, 1, pv.cplxmul.h.r, 0x7bd0333d, 0x4f5eee6e, 0xace30229, 0x7bd00a20 )
  TEST_RRR_SRC3_BYPASS( 56, 2, pv.cplxmul.h.r, 0x8bf40ee1, 0x0456d08e, 0x33c7d320, 0x8bf46270 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 27, 0, 0, pv.cplxmul.h.r, 0x845e2615, 0x8eed4e71, 0x20940f2f, 0x845e2244 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 1, pv.cplxmul.h.r, 0x51fd2a15, 0x34b5a31f, 0xd3bddf1f, 0x51fd5b29 )
  TEST_RRR_SRC12_BYPASS( 29, 0, 2, pv.cplxmul.h.r, 0x6b6045f5, 0x2e062661, 0x91b56510, 0x6b60f62d )
  TEST_RRR_SRC12_BYPASS( 30, 1, 0, pv.cplxmul.h.r, 0xc6e9b573, 0xc194a175, 0xe5135327, 0xc6e96829 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 1, pv.cplxmul.h.r, 0x96d2d3d1, 0xcf64c10f, 0xa6a314d5, 0x96d29e18 )
  TEST_RRR_SRC12_BYPASS( 32, 1, 2, pv.cplxmul.h.r, 0x798b977c, 0x23467a9a, 0x2b429f54, 0x798be7cc )
  TEST_RRR_SRC12_BYPASS( 33, 2, 0, pv.cplxmul.h.r, 0x746af938, 0x4b314c6e, 0xc1f5b79c, 0x746aded0 )
  TEST_RRR_SRC12_BYPASS( 34, 2, 1, pv.cplxmul.h.r, 0xb773bbd5, 0x21438ab4, 0x4d293482, 0xb773b5e8 )
  TEST_RRR_SRC12_BYPASS( 35, 2, 2, pv.cplxmul.h.r, 0x3fc3f34e, 0x8f1fc839, 0x1cda5785, 0x3fc3b6a1 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 0, pv.cplxmul.h.r, 0xaf1af27d, 0x698b7c16, 0x62a645f9, 0xaf1a1974 )
  TEST_RRR_SRC12_BYPASS( 37, 0, 1, pv.cplxmul.h.r, 0x617cb7e2, 0x93770e6d, 0xa89911b8, 0x617c1b2d )
  TEST_RRR_SRC12_BYPASS( 38, 0, 2, pv.cplxmul.h.r, 0x5aad2553, 0x278065ea, 0x44a9497e, 0x5aadc228 )
  TEST_RRR_SRC12_BYPASS( 39, 1, 0, pv.cplxmul.h.r, 0x8d0afb66, 0x12c18c44, 0x06430413, 0x8d0a077c )
  TEST_RRR_SRC12_BYPASS( 40, 1, 1, pv.cplxmul.h.r, 0x78109ba5, 0x86b432df, 0xcaba8286, 0x78108fea )
  TEST_RRR_SRC12_BYPASS( 41, 1, 2, pv.cplxmul.h.r, 0xe82a9bc6, 0x80a08993, 0xfce168f8, 0xe82af32e )
  TEST_RRR_SRC12_BYPASS( 42, 2, 0, pv.cplxmul.h.r, 0xa68f16b8, 0xaba7091b, 0x167e6f0d, 0xa68f8491 )
  TEST_RRR_SRC12_BYPASS( 43, 2, 1, pv.cplxmul.h.r, 0x7fe4269f, 0xcff2b1f3, 0xbf8698f7, 0x7fe4f016 )
  TEST_RRR_SRC12_BYPASS( 44, 2, 2, pv.cplxmul.h.r, 0x55d0c170, 0x801ddc8b, 0xaed7bd1d, 0x55d0a996 )
  
  

  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.r, 0xff260000, 0x39ca7b5e, 0xff267381 )
  TEST_RRR_ZEROSRC1( 58, pv.cplxmul.h.r, 0x6e880000, 0x2659081a, 0x6e881053 )
  
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.r, 0xc1750000, 0x05fa3d89, 0xc17527ef )
  TEST_RRR_ZEROSRC2( 60, pv.cplxmul.h.r, 0x071a0000, 0xe84c88d1, 0x071a7975 )
  
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.r, 0x00003b63, 0xcaa09aa9, 0x6cfaee62 )
  TEST_RRR_ZEROSRC3( 62, pv.cplxmul.h.r, 0x0000444f, 0xb945086b, 0x783c1c75 )
  
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.r, 0xbc260000, 0xbc26973a )
  TEST_RRR_ZEROSRC12( 64, pv.cplxmul.h.r, 0x1c0a0000, 0x1c0a12cb )
  
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.r, 0x00000000 )
  TEST_RRR_ZEROSRC123( 66, pv.cplxmul.h.r, 0x00000000 )
  
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.r, 0x92728501, 0x0b509a46 )
  TEST_RRR_ZERODEST( 68, pv.cplxmul.h.r, 0x5b2accb8, 0xefabcbf4 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
