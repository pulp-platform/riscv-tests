# See LICENSE for license details.

#*****************************************************************************
# pv.srl.b
#-----------------------------------------------------------------------------
#
# Test pv.srl.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.srl.b, 0x20100401, 0x81818181, 0xaabbcdff )
  TEST_RR_OP( 3, pv.srl.b, 0x20100481, 0x81818181, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.srl.b, 0x20100440, 0x81818181, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.srl.b, 0x00520000, 0x08a50021, 0xcfa13b47 )
  TEST_RR_OP( 6, pv.srl.b, 0x03010119, 0x68a0d719, 0xa59787b8 )
  TEST_RR_OP( 7, pv.srl.b, 0x0903010c, 0x91e17d64, 0x64fe6e73 )
  TEST_RR_OP( 8, pv.srl.b, 0x390f4703, 0xe7fd8fcd, 0xe2a491d6 )
  TEST_RR_OP( 9, pv.srl.b, 0x320318a6, 0xcad2c0a6, 0xea8643c0 )
  TEST_RR_OP( 10, pv.srl.b, 0x01190002, 0x88ca004c, 0x7713c5cd )
  TEST_RR_OP( 11, pv.srl.b, 0x05001113, 0x164b234f, 0x92d7e1aa )
  TEST_RR_OP( 12, pv.srl.b, 0x2703020f, 0x9ec148f3, 0x521655e4 )
  TEST_RR_OP( 13, pv.srl.b, 0x0103011c, 0x55c84772, 0xae164ed2 )
  TEST_RR_OP( 14, pv.srl.b, 0x06780601, 0xc6780c21, 0x0d08d9ad )
  TEST_RR_OP( 15, pv.srl.b, 0x3c00a801, 0xf31da878, 0xeab7c896 )
  TEST_RR_OP( 16, pv.srl.b, 0xc7194738, 0xc7c847e3, 0xd06b1882 )
  TEST_RR_OP( 17, pv.srl.b, 0x00010402, 0x159f8da2, 0x67af4536 )
  TEST_RR_OP( 18, pv.srl.b, 0x01010b00, 0x11fc5a1a, 0x3cbf9377 )
  TEST_RR_OP( 19, pv.srl.b, 0x021b0b41, 0xa1d82c82, 0x6efbea01 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.srl.b, 0x012d0028, 0x97b52ba1, 0x07ea56ba )
  TEST_RR_SRC1_EQ_DEST( 21, pv.srl.b, 0x02054d9e, 0xa92b9b9e, 0x9e6b0988 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.srl.b, 0x69010154, 0x692402a9, 0x98959121 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.srl.b, 0x01181202, 0x5a3112a4, 0xa6f96006 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.srl.b, 0xd8037c07, 0xd87df9e5 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.srl.b, 0x06017400, 0x64d7e905 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.srl.b, 0xf8401b04, 0xf881db8d, 0xf881db8d )
  TEST_RR_DEST_BYPASS( 45, 1, pv.srl.b, 0x00120b00, 0x164a5b0f, 0x164a5b0f )
  TEST_RR_DEST_BYPASS( 46, 2, pv.srl.b, 0x04010100, 0x9d877e36, 0x9d877e36 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.srl.b, 0x020d1403, 0x96d4a3e6, 0x96d4a3e6 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.srl.b, 0x08130a14, 0x849b2a52, 0x849b2a52 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.srl.b, 0x01a80148, 0xffa87648, 0xffa87648 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.srl.b, 0x05050103, 0xaebfd7d3, 0x7d75c706 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.srl.b, 0x010100f1, 0x475a2df1, 0x16aee7c8 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.srl.b, 0x0a04293a, 0x2b40a4ea, 0x4234f282 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.srl.b, 0x030e000c, 0x68e42bc0, 0x0d6c46ac )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.srl.b, 0x01fb4200, 0x94fb8411, 0x9758b937 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.srl.b, 0x0503d10b, 0x05f3d15e, 0x809620cb )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.srl.b, 0x11010952, 0x47814b52, 0x9a5f4b68 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.srl.b, 0x000b0706, 0x1d0b72d4, 0x1db08c8d )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.srl.b, 0x00000a0e, 0x2b31571c, 0x978ed3b1 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.srl.b, 0x001d0d18, 0x35edd830, 0x6f0b4479 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.srl.b, 0x00010201, 0x19e38742, 0x9f1f36e6 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.srl.b, 0x14be0123, 0x53be108d, 0x5ad804ea )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.srl.b, 0x0a000c19, 0xad26c219, 0x3c166450 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.srl.b, 0x087c022d, 0x46f912b7, 0xcbd1636a )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.srl.b, 0x010b1437, 0xaa1728de, 0xd7b18942 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.srl.b, 0x0b0c0002, 0x2ecf4e41, 0xf2dc67e5 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.srl.b, 0x01666200, 0xbccc626b, 0x27b110bf )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.srl.b, 0x003d5911, 0x153db322, 0x1e083981 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.srl.b, 0x00000000, 0xc3d75f6b )
  TEST_RR_ZEROSRC1( 51, pv.srl.b, 0x00000000, 0x2bce5af2 )
  
  TEST_RR_ZEROSRC2( 52, pv.srl.b, 0x026638f0, 0x026638f0 )
  TEST_RR_ZEROSRC2( 53, pv.srl.b, 0xddfd9d7b, 0xddfd9d7b )
  
  TEST_RR_ZEROSRC12( 54, pv.srl.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.srl.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.srl.b, 0x4d85b615, 0xdbdcd292 )
  TEST_RR_ZERODEST( 57, pv.srl.b, 0x9e7c6643, 0x984d671a )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
