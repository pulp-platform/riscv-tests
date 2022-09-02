# See LICENSE for license details.

#*****************************************************************************
# pv.avgu.b
#-----------------------------------------------------------------------------
#
# Test pv.avgu.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avgu.b, 0x7d7c7b7a, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avgu.b, 0x3b3b3b3b, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.avgu.b, 0x7b253f1c, 0xb0362aee, 0x4715554b )
  TEST_RR_OP( 5, pv.avgu.b, 0x20603d20, 0x7ba2ee78, 0xc51e8cc9 )
  TEST_RR_OP( 6, pv.avgu.b, 0x126b1479, 0x8a44aed7, 0x9a937a1c )
  TEST_RR_OP( 7, pv.avgu.b, 0x69670867, 0x2922421d, 0xa9accfb1 )
  TEST_RR_OP( 8, pv.avgu.b, 0x0a25734b, 0x47cb62dc, 0xcd7f84ba )
  TEST_RR_OP( 9, pv.avgu.b, 0x3f070527, 0x696d81ab, 0x15a18aa3 )
  TEST_RR_OP( 10, pv.avgu.b, 0x6a381334, 0x5622642f, 0x7e4ec339 )
  TEST_RR_OP( 11, pv.avgu.b, 0x3259766e, 0xe093fe96, 0x841fee46 )
  TEST_RR_OP( 12, pv.avgu.b, 0x6153456e, 0xbaaf8be7, 0x09f8fff5 )
  TEST_RR_OP( 13, pv.avgu.b, 0x2b060934, 0xfaf04519, 0x5d1cce4f )
  TEST_RR_OP( 14, pv.avgu.b, 0x604c214e, 0x63d64949, 0x5ec3f954 )
  TEST_RR_OP( 15, pv.avgu.b, 0x264f5213, 0xfb17c789, 0x5188de9e )
  TEST_RR_OP( 16, pv.avgu.b, 0x381f426f, 0x2e572deb, 0x42e757f3 )
  TEST_RR_OP( 17, pv.avgu.b, 0x1e345624, 0x155af722, 0x270fb526 )
  TEST_RR_OP( 18, pv.avgu.b, 0x5c765b76, 0xfd975880, 0xbb565e6d )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.avgu.b, 0x22513f19, 0x51808ef0, 0xf423f043 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.avgu.b, 0x5c6c4328, 0x368844df, 0x82514372 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.avgu.b, 0x4d7c4453, 0x8d6e641b, 0x0d8b258c )
  TEST_RR_SRC2_EQ_DEST( 22, pv.avgu.b, 0x7603202f, 0x0ec64012, 0xdf41004d )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.avgu.b, 0x6c705053, 0x6c705053 )
  TEST_RR_SRC12_EQ_DEST( 24, pv.avgu.b, 0x0f21744c, 0x8f2174cc )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.avgu.b, 0x2c3a2724, 0x2c3a2724, 0x2c3a2724 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.avgu.b, 0x233d6a79, 0x233d6af9, 0x233d6af9 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.avgu.b, 0x5233364e, 0x52b3b64e, 0x52b3b64e )
  TEST_RR_DEST_BYPASS( 46, 0, pv.avgu.b, 0x2156231e, 0xa1d6239e, 0xa1d6239e )
  TEST_RR_DEST_BYPASS( 47, 1, pv.avgu.b, 0x5f64721f, 0xdfe4721f, 0xdfe4721f )
  TEST_RR_DEST_BYPASS( 48, 2, pv.avgu.b, 0x44247861, 0x44a4f8e1, 0x44a4f8e1 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.avgu.b, 0x3d381a58, 0xc0bbf325, 0xbbb5428c )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.avgu.b, 0x0904240b, 0xe3ea3844, 0x2f1e11d2 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.avgu.b, 0x186b2840, 0xe453ea22, 0x4c84665e )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.avgu.b, 0x325f6d5b, 0xa8d41b35, 0xbceac082 )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.avgu.b, 0x64022770, 0x4ffa7b16, 0x7a0bd3ca )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.avgu.b, 0x4c2e7a4c, 0x1794c36a, 0x81c9312f )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.avgu.b, 0x3b1e121b, 0x0d89e54b, 0x69b340ec )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.avgu.b, 0x08405876, 0xaa7d5f07, 0x670452e6 )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.avgu.b, 0x5448543b, 0xb3e822d1, 0xf6a886a5 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.avgu.b, 0x7e2b0511, 0x4969b518, 0xb4ee560a )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.avgu.b, 0x58474d7d, 0x019422ae, 0xaffb784c )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.avgu.b, 0x2607086b, 0xff5a1310, 0x4eb4fec6 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.avgu.b, 0x38267033, 0xa0fdea93, 0xd14ff6d3 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.avgu.b, 0x5a382d2e, 0x1fffe490, 0x967277cd )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.avgu.b, 0x0c5c4c1a, 0x3c9ba68e, 0xdd1df2a7 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.avgu.b, 0x54712d18, 0x18024291, 0x90e119a0 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.avgu.b, 0x3e505d71, 0x91f83338, 0xeca987ab )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.avgu.b, 0x5d590f30, 0xaef1f5eb, 0x0dc12975 )
  
  

  TEST_RR_ZEROSRC1( 49, pv.avgu.b, 0x2816152f, 0x512c2a5f )
  TEST_RR_ZEROSRC1( 50, pv.avgu.b, 0x031a095d, 0x073412ba )
  
  TEST_RR_ZEROSRC2( 51, pv.avgu.b, 0x5a556351, 0xb4aac6a2 )
  TEST_RR_ZEROSRC2( 52, pv.avgu.b, 0x1a192546, 0x35324b8d )
  
  TEST_RR_ZEROSRC12( 53, pv.avgu.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.avgu.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.avgu.b, 0x85fdbd13, 0xe8fdd900 )
  TEST_RR_ZERODEST( 56, pv.avgu.b, 0x42000769, 0xd6f88633 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
