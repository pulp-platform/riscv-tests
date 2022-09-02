# See LICENSE for license details.

#*****************************************************************************
# pv.max.b
#-----------------------------------------------------------------------------
#
# Test pv.max.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.max.b, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.max.b, 0x84858688, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.max.b, 0x77665544, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.max.b, 0x4a663d54, 0x4ac2ab54, 0xc7663d44 )
  TEST_RR_OP( 6, pv.max.b, 0x2e74d253, 0x2e5d9753, 0x0a74d227 )
  TEST_RR_OP( 7, pv.max.b, 0xc1e81607, 0xc19285db, 0xb3e81607 )
  TEST_RR_OP( 8, pv.max.b, 0x7049527d, 0x704944a4, 0xd63f527d )
  TEST_RR_OP( 9, pv.max.b, 0x73306033, 0x7330bf33, 0xb71d60cb )
  TEST_RR_OP( 10, pv.max.b, 0xdd3148ea, 0xddcb48ea, 0xaf31fb82 )
  TEST_RR_OP( 11, pv.max.b, 0x1963e1c9, 0x9d95e1c9, 0x1963d3b3 )
  TEST_RR_OP( 12, pv.max.b, 0x4f9b3664, 0x4f9b3664, 0x168fbdc7 )
  TEST_RR_OP( 13, pv.max.b, 0xeb20750d, 0xc820750d, 0xebcce18c )
  TEST_RR_OP( 14, pv.max.b, 0x4866df2d, 0xf434842d, 0x4866dfe3 )
  TEST_RR_OP( 15, pv.max.b, 0x3477354c, 0x34b63596, 0xcf77d94c )
  TEST_RR_OP( 16, pv.max.b, 0xe2620d37, 0xe2620d37, 0x9f82d411 )
  TEST_RR_OP( 17, pv.max.b, 0x32314564, 0x0bf40204, 0x32314564 )
  TEST_RR_OP( 18, pv.max.b, 0x78316d48, 0x78ee6de9, 0x01312248 )
  TEST_RR_OP( 19, pv.max.b, 0x13e83d1d, 0x1398911d, 0x01e83db0 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.max.b, 0xd964744c, 0xc564744c, 0xd957a54b )
  TEST_RR_SRC1_EQ_DEST( 21, pv.max.b, 0x3635ffae, 0x2935ffae, 0x36c5d791 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.max.b, 0x5e65d149, 0x27f18349, 0x5e65d10b )
  TEST_RR_SRC2_EQ_DEST( 23, pv.max.b, 0x45e01112, 0x45bdce12, 0x08e011a2 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.max.b, 0x752ce632, 0x752ce632 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.max.b, 0xdd461689, 0xdd461689 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.max.b, 0x6767e8ea, 0x6767e8ea, 0x6767e8ea )
  TEST_RR_DEST_BYPASS( 45, 1, pv.max.b, 0x5cd31224, 0x5cd31224, 0x5cd31224 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.max.b, 0xefc3a564, 0xefc3a564, 0xefc3a564 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.max.b, 0x8918dc63, 0x8918dc63, 0x8918dc63 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.max.b, 0x0f12eb25, 0x0f12eb25, 0x0f12eb25 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.max.b, 0x2e1fc4d5, 0x2e1fc4d5, 0x2e1fc4d5 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.max.b, 0x535e7168, 0x535e1c68, 0x83327125 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.max.b, 0x5d65074c, 0xcb65e34c, 0x5d960701 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.max.b, 0x033a3ed3, 0xc23a3ed3, 0x038a238b )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.max.b, 0x196c3e10, 0x1291b910, 0x196c3ef4 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.max.b, 0x123f5a39, 0xeee7c139, 0x123f5a09 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.max.b, 0x48626348, 0xbbd15725, 0x48626348 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.max.b, 0xff092e75, 0xd2091c68, 0xffd22e75 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.max.b, 0xfe3179c4, 0xfe3179b4, 0xfa09bfc4 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.max.b, 0x75bc5d2f, 0x7587c42f, 0x8dbc5dcb )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.max.b, 0x516dd655, 0x9605d644, 0x516dcf55 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.max.b, 0x5beaf205, 0x59ceb2fd, 0x5beaf205 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.max.b, 0x2a22544e, 0x2a22fd4e, 0x1cbc5494 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.max.b, 0x77215330, 0x77215030, 0xbada5324 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.max.b, 0x82764bf5, 0x81764bc4, 0x823b41f5 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.max.b, 0x3d2dcc28, 0xe22d94f8, 0x3ddacc28 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.max.b, 0x7e266b75, 0xe6a0a7cc, 0x7e266b75 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.max.b, 0xde2aeb64, 0xde04ebda, 0x8c2ae264 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.max.b, 0x374d5170, 0x374d46cb, 0x93025170 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.max.b, 0x5e00725f, 0x5eff725f )
  TEST_RR_ZEROSRC1( 51, pv.max.b, 0x006d0000, 0xb86decb0 )
  
  TEST_RR_ZEROSRC2( 52, pv.max.b, 0x2b00003c, 0x2b8ce13c )
  TEST_RR_ZEROSRC2( 53, pv.max.b, 0x00161c3c, 0xba161c3c )
  
  TEST_RR_ZEROSRC12( 54, pv.max.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.max.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.max.b, 0x55cb1c9d, 0xc71e596e )
  TEST_RR_ZERODEST( 57, pv.max.b, 0xc12a57bb, 0xae1bcae0 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
