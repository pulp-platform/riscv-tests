# See LICENSE for license details.

#*****************************************************************************
# pv.max.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.max.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.max.sc.b, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.max.sc.b, 0x88888888, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.max.sc.b, 0x44444444, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.max.sc.b, 0x30303030, 0xebbba8cd, 0xd6c97d30 )
  TEST_RR_OP( 6, pv.max.sc.b, 0x49051678, 0x49df1678, 0x93b1f505 )
  TEST_RR_OP( 7, pv.max.sc.b, 0xfcfcfcfc, 0xc1c2bfc9, 0xa2bf92fc )
  TEST_RR_OP( 8, pv.max.sc.b, 0x79797979, 0x6b143500, 0x55aae979 )
  TEST_RR_OP( 9, pv.max.sc.b, 0x67796767, 0xa9796239, 0x9186fa67 )
  TEST_RR_OP( 10, pv.max.sc.b, 0xf8f8f8f8, 0xe8a1aac3, 0xd5c08af8 )
  TEST_RR_OP( 11, pv.max.sc.b, 0x74515151, 0x7447804e, 0xb5010351 )
  TEST_RR_OP( 12, pv.max.sc.b, 0x1de7e77b, 0x1dd0a97b, 0x9b4967e7 )
  TEST_RR_OP( 13, pv.max.sc.b, 0x515a5151, 0x435a4799, 0x4759d451 )
  TEST_RR_OP( 14, pv.max.sc.b, 0x7964aeae, 0x79649991, 0xbcdc28ae )
  TEST_RR_OP( 15, pv.max.sc.b, 0xfbd011e7, 0xfbd011e7, 0x432c748d )
  TEST_RR_OP( 16, pv.max.sc.b, 0x732170fb, 0x732170fb, 0x851a98f4 )
  TEST_RR_OP( 17, pv.max.sc.b, 0x4efaff4e, 0x4efaff4e, 0x7dd82b8a )
  TEST_RR_OP( 18, pv.max.sc.b, 0x68686868, 0xe90d9167, 0xe4021268 )
  TEST_RR_OP( 19, pv.max.sc.b, 0x0b5935d1, 0x0b5935d1, 0x310c84ba )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.max.sc.b, 0xecec1c5d, 0x91ad1c5d, 0x27d614ec )
  TEST_RR_SRC1_EQ_DEST( 21, pv.max.sc.b, 0x626d4e4e, 0x626da9a7, 0xd747174e )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.max.sc.b, 0x2d77bedf, 0x2d77bedf, 0xcc3f1086 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.max.sc.b, 0x35353535, 0x229014e6, 0x95f10035 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.max.sc.b, 0x7f7f7f7f, 0xb607107f )
  TEST_RR_SRC12_EQ_DEST( 25, pv.max.sc.b, 0x092cb5a3, 0x092cb5a3 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.max.sc.b, 0x1e1e4e1e, 0x06084e1e, 0x06084e1e )
  TEST_RR_DEST_BYPASS( 45, 1, pv.max.sc.b, 0x23232323, 0x08cef123, 0x08cef123 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.max.sc.b, 0x5f5f5f5f, 0x4f17445f, 0x4f17445f )
  TEST_RR_DEST_BYPASS( 47, 0, pv.max.sc.b, 0x0c5708bd, 0x0c5708bd, 0x0c5708bd )
  TEST_RR_DEST_BYPASS( 48, 1, pv.max.sc.b, 0x38384d38, 0x0fc34d38, 0x0fc34d38 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.max.sc.b, 0x45454545, 0x9f9e9145, 0x9f9e9145 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.max.sc.b, 0x36206f46, 0x36206f46, 0x12e45a95 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.max.sc.b, 0x7f7f7f7f, 0xf773260c, 0xc0f1347f )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.max.sc.b, 0x997d7015, 0x8b7d7015, 0x790d1a99 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.max.sc.b, 0xfa45fafa, 0xf445dc90, 0xaff803fa )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.max.sc.b, 0x48486548, 0xe614650a, 0x335eb248 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.max.sc.b, 0xfa2026fa, 0x8c20268e, 0x553dc6fa )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.max.sc.b, 0x5fa95fd5, 0x5fa95fd5, 0xec32d79f )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.max.sc.b, 0x0c39280c, 0x8339289c, 0x4088720c )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.max.sc.b, 0x357b3b35, 0x2d7b3ba3, 0x10520f35 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.max.sc.b, 0x3a161632, 0x3ad9ed32, 0x59949f16 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.max.sc.b, 0x123f22e9, 0x123f22e9, 0xeef43493 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.max.sc.b, 0x59595959, 0x24b92808, 0x01174c59 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.max.sc.b, 0x44444444, 0xc2d29cb2, 0x97fadc44 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.max.sc.b, 0x63555575, 0x63ad1f75, 0x23b85455 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.max.sc.b, 0x55555555, 0xe7c155fc, 0x5874af55 )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.max.sc.b, 0x4c230ad2, 0x4c230ac1, 0xadc0e2d2 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.max.sc.b, 0xf31658f3, 0xb41658e9, 0xe71ddef3 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.max.sc.b, 0x6a6a6a6a, 0x0ce3554b, 0xbdfd4b6a )
  
  

  TEST_RR_ZEROSRC1( 50, pv.max.sc.b, 0x00000000, 0x4319c8e1 )
  TEST_RR_ZEROSRC1( 51, pv.max.sc.b, 0x51515151, 0xb625fa51 )
  
  TEST_RR_ZEROSRC2( 52, pv.max.sc.b, 0x6c00001d, 0x6c88f41d )
  TEST_RR_ZEROSRC2( 53, pv.max.sc.b, 0x6800001e, 0x6883ca1e )
  
  TEST_RR_ZEROSRC12( 54, pv.max.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.max.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.max.sc.b, 0x5b4b7fa7, 0x675a74c9 )
  TEST_RR_ZERODEST( 57, pv.max.sc.b, 0x37416d61, 0x348b75cd )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
