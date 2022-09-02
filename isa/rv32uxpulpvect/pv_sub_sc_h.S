# See LICENSE for license details.

#*****************************************************************************
# pv.sub.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.sub.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sub.sc.h, 0x06060404, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.sub.sc.h, 0xf9f9fbfc, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.sub.sc.h, 0xaacdccef, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.sub.sc.h, 0xc20a68cd, 0x36d0dd93, 0x96e274c6 )
  TEST_RR_OP( 6, pv.sub.sc.h, 0x25fb1466, 0xe888d6f3, 0xa5b1c28d )
  TEST_RR_OP( 7, pv.sub.sc.h, 0x68069db7, 0x8b53c104, 0x4563234d )
  TEST_RR_OP( 8, pv.sub.sc.h, 0xb7a703ea, 0x0c59589c, 0xf3a954b2 )
  TEST_RR_OP( 9, pv.sub.sc.h, 0x24eccdd4, 0x2c43d52b, 0x75f10757 )
  TEST_RR_OP( 10, pv.sub.sc.h, 0x0cb10db6, 0xb971ba76, 0xa27dacc0 )
  TEST_RR_OP( 11, pv.sub.sc.h, 0xb05dbc9f, 0x75e28224, 0x7242c585 )
  TEST_RR_OP( 12, pv.sub.sc.h, 0x3f133344, 0xbbcbaffc, 0x22c07cb8 )
  TEST_RR_OP( 13, pv.sub.sc.h, 0xb595be4c, 0x6e927749, 0x901eb8fd )
  TEST_RR_OP( 14, pv.sub.sc.h, 0xe46b61f6, 0xe0055d90, 0xec20fb9a )
  TEST_RR_OP( 15, pv.sub.sc.h, 0x42c33347, 0x4ced3d71, 0xb4010a2a )
  TEST_RR_OP( 16, pv.sub.sc.h, 0xb87f6674, 0xa585537a, 0x0b2aed06 )
  TEST_RR_OP( 17, pv.sub.sc.h, 0x86d155ae, 0x3aa90986, 0x4d63b3d8 )
  TEST_RR_OP( 18, pv.sub.sc.h, 0xd7ccbd8f, 0x970d7cd0, 0x725bbf41 )
  TEST_RR_OP( 19, pv.sub.sc.h, 0xd8e245d5, 0xb5ee22e1, 0x84dddd0c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sub.sc.h, 0x2cb4b386, 0x20bfa791, 0x9ffbf40b )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sub.sc.h, 0x503a3e75, 0xab51998c, 0xfe365b17 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sub.sc.h, 0x46b68987, 0xd36b163c, 0x1eaf8cb5 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sub.sc.h, 0xafb7abcd, 0x1d07191d, 0xef736d50 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sub.sc.h, 0x265c0000, 0xc7cca170 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sub.sc.h, 0x16de0000, 0x8c017523 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sub.sc.h, 0x9e5a0000, 0xccc32e69, 0xccc32e69 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sub.sc.h, 0x22fb0000, 0xb615931a, 0xb615931a )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sub.sc.h, 0xb66c0000, 0x312c7ac0, 0x312c7ac0 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sub.sc.h, 0x465c0000, 0xa82a61ce, 0xa82a61ce )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sub.sc.h, 0x58320000, 0xbde865b6, 0xbde865b6 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sub.sc.h, 0xeae40000, 0x7fe79503, 0x7fe79503 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sub.sc.h, 0x5ff09f36, 0x6a7fa9c5, 0x0c940a8f )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sub.sc.h, 0xb11785de, 0xdd00b1c7, 0x07892be9 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sub.sc.h, 0xac420100, 0xf6544b12, 0x64524a12 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sub.sc.h, 0xa9ea2262, 0xe8de6156, 0x74893ef4 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sub.sc.h, 0x3b6f787b, 0x36657371, 0x909ffaf6 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sub.sc.h, 0x50938508, 0x4a827ef7, 0x67fcf9ef )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sub.sc.h, 0xf8e11de8, 0x12fd3804, 0x4df11a1c )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sub.sc.h, 0x36dd38de, 0xfd6aff6b, 0x8230c68d )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sub.sc.h, 0x8fbece7f, 0x7e4fbd10, 0x4f7fee91 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sub.sc.h, 0x6f7f837a, 0x5b8a6f85, 0x4067ec0b )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sub.sc.h, 0x9939286a, 0xd34c627d, 0xac093a13 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sub.sc.h, 0x97ab069a, 0xfdaa6c99, 0xb59c65ff )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sub.sc.h, 0xa10363b2, 0x98fc5bab, 0x92ecf7f9 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sub.sc.h, 0x1aeec7b2, 0xa96d5631, 0xb8548e7f )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sub.sc.h, 0x25f8ed85, 0xba3481c1, 0x20eb943c )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sub.sc.h, 0x211d1efa, 0x7a2d780a, 0xb9e45910 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sub.sc.h, 0x2c3b9448, 0x0a9572a2, 0xc3e0de5a )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sub.sc.h, 0x274ff3a5, 0xdc4da8a3, 0xf6efb4fe )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sub.sc.h, 0x09f609f6, 0x6987f60a )
  TEST_RR_ZEROSRC1( 51, pv.sub.sc.h, 0x95f895f8, 0xe1576a08 )
  
  TEST_RR_ZEROSRC2( 52, pv.sub.sc.h, 0x71740c98, 0x71740c98 )
  TEST_RR_ZEROSRC2( 53, pv.sub.sc.h, 0x067ebde0, 0x067ebde0 )
  
  TEST_RR_ZEROSRC12( 54, pv.sub.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sub.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sub.sc.h, 0x0026ec84, 0xb2325246 )
  TEST_RR_ZERODEST( 57, pv.sub.sc.h, 0xcea42c75, 0x1b584a10 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
