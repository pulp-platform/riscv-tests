# See LICENSE for license details.

#*****************************************************************************
# pv.packhi.b
#-----------------------------------------------------------------------------
#
# Test pv.packhi.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.packhi.b, 0x11ff3d4c, 0x44332211, 0xccddeeff, 0x1f2e3d4c )
  TEST_RRR_OP( 3, pv.packhi.b, 0x6490d23c, 0xd3e01e64, 0x256c1390, 0x6816d23c )
  TEST_RRR_OP( 4, pv.packhi.b, 0x073aad8f, 0xd8931307, 0xbe02763a, 0xb126ad8f )
  TEST_RRR_OP( 5, pv.packhi.b, 0x33d44ef6, 0xa3610833, 0x323c00d4, 0xaafe4ef6 )
  TEST_RRR_OP( 6, pv.packhi.b, 0xe4d27239, 0x81aa45e4, 0x696700d2, 0x5a0c7239 )
  TEST_RRR_OP( 7, pv.packhi.b, 0xa96e7624, 0x4d9892a9, 0x29ace76e, 0x70d87624 )
  TEST_RRR_OP( 8, pv.packhi.b, 0x07d8f42f, 0x0e43eb07, 0xaaa7a5d8, 0x67cef42f )
  TEST_RRR_OP( 9, pv.packhi.b, 0x4a2ee240, 0x2410454a, 0x4536c92e, 0xc6a1e240 )
  TEST_RRR_OP( 10, pv.packhi.b, 0x5f807db1, 0x8fdfe05f, 0xaea95e80, 0xe18a7db1 )
  TEST_RRR_OP( 11, pv.packhi.b, 0x8f1056ea, 0xfdfefd8f, 0xa36ee310, 0xdbb256ea )
  TEST_RRR_OP( 12, pv.packhi.b, 0x4ce29cbc, 0x96c9bd4c, 0x26e98de2, 0x37e19cbc )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 13, pv.packhi.b, 0xc3f017c3, 0x337d17c3, 0x34b0c4f0 )
  TEST_RRR_SRC1_EQ_DEST( 14, pv.packhi.b, 0x329a3732, 0x4dd03732, 0xd7b4139a )
  
  TEST_RRR_SRC2_EQ_DEST( 15, pv.packhi.b, 0x3632af32, 0x52ed1f36, 0x1057af32 )
  TEST_RRR_SRC2_EQ_DEST( 16, pv.packhi.b, 0x1edefede, 0x3f7de01e, 0x3c8cfede )
  
  TEST_RRR_SRC12_EQ_DEST( 17, pv.packhi.b, 0xc7c731c7, 0xd48c31c7 )
  TEST_RRR_SRC12_EQ_DEST( 18, pv.packhi.b, 0x4f4f564f, 0x33a7564f )
  
  TEST_RRR_DEST_BYPASS( 37, 0, pv.packhi.b, 0xe1e4a2d5, 0xc1a2d2e1, 0x5da270e4, 0xe387a2d5 )
  TEST_RRR_DEST_BYPASS( 38, 1, pv.packhi.b, 0x4f6e693d, 0xa13c074f, 0xc5c0b36e, 0xd5f5693d )
  TEST_RRR_DEST_BYPASS( 39, 2, pv.packhi.b, 0x3b127a38, 0x34bf5e3b, 0x0ac2d512, 0x61f47a38 )
  TEST_RRR_DEST_BYPASS( 40, 0, pv.packhi.b, 0x54dabead, 0xd7d39b54, 0x015b30da, 0x620dbead )
  TEST_RRR_DEST_BYPASS( 41, 1, pv.packhi.b, 0xea0945a6, 0xbaaf88ea, 0x927e8209, 0x886f45a6 )
  TEST_RRR_DEST_BYPASS( 42, 2, pv.packhi.b, 0xc7316a36, 0xfd5ad6c7, 0xb618e831, 0xb1406a36 )
  TEST_RRR_SRC3_BYPASS( 43, 0, pv.packhi.b, 0xbccdfc27, 0x34ffcfbc, 0x64492dcd, 0x8539fc27 )
  TEST_RRR_SRC3_BYPASS( 44, 1, pv.packhi.b, 0xaef33f2c, 0xf25240ae, 0xd1c17bf3, 0x7f143f2c )
  TEST_RRR_SRC3_BYPASS( 45, 2, pv.packhi.b, 0x2720f529, 0xe6135827, 0x2f600220, 0xefddf529 )
  TEST_RRR_SRC3_BYPASS( 46, 0, pv.packhi.b, 0xf5d4b1ac, 0xa1c834f5, 0x2dce98d4, 0x9c03b1ac )
  TEST_RRR_SRC3_BYPASS( 47, 1, pv.packhi.b, 0x94aa52ca, 0x995ce694, 0xf8f3d6aa, 0x811452ca )
  TEST_RRR_SRC3_BYPASS( 48, 2, pv.packhi.b, 0x2109b879, 0x5c7afd21, 0x464e3e09, 0x023ab879 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 19, 0, 0, pv.packhi.b, 0xd75d4e92, 0x6fe5e9d7, 0x49f1865d, 0x05e64e92 )
  TEST_RRR_SRC12_BYPASS( 20, 0, 1, pv.packhi.b, 0x07a7e77a, 0x924ccc07, 0x10239ba7, 0x433fe77a )
  TEST_RRR_SRC12_BYPASS( 21, 0, 2, pv.packhi.b, 0xca17efa5, 0xfa3b9bca, 0x1115c017, 0xa8b6efa5 )
  TEST_RRR_SRC12_BYPASS( 22, 1, 0, pv.packhi.b, 0x5382276b, 0x4b256153, 0x04c7b982, 0xe322276b )
  TEST_RRR_SRC12_BYPASS( 23, 1, 1, pv.packhi.b, 0x743374ae, 0x57d20074, 0x640f8733, 0x271974ae )
  TEST_RRR_SRC12_BYPASS( 24, 1, 2, pv.packhi.b, 0xe5363784, 0x391ee3e5, 0x7fc5f736, 0x111c3784 )
  TEST_RRR_SRC12_BYPASS( 25, 2, 0, pv.packhi.b, 0x1b486bd6, 0xf053f71b, 0x7be5c148, 0xb59a6bd6 )
  TEST_RRR_SRC12_BYPASS( 26, 2, 1, pv.packhi.b, 0x5311c911, 0x04c4cd53, 0xc8045811, 0x09f1c911 )
  TEST_RRR_SRC12_BYPASS( 27, 2, 2, pv.packhi.b, 0x755d4551, 0x214d2c75, 0xf9bbda5d, 0x6d1a4551 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 0, pv.packhi.b, 0x6276db95, 0x54a29162, 0xb8d9ef76, 0xb748db95 )
  TEST_RRR_SRC12_BYPASS( 29, 0, 1, pv.packhi.b, 0x31cde115, 0x4d586731, 0x163a5ccd, 0x66aae115 )
  TEST_RRR_SRC12_BYPASS( 30, 0, 2, pv.packhi.b, 0x8668758c, 0x969c4b86, 0xda92b568, 0xee37758c )
  TEST_RRR_SRC12_BYPASS( 31, 1, 0, pv.packhi.b, 0x85799957, 0x925b1785, 0xf8ac5079, 0xfe499957 )
  TEST_RRR_SRC12_BYPASS( 32, 1, 1, pv.packhi.b, 0x1583c71c, 0x7c7e1f15, 0x547fbd83, 0x38eac71c )
  TEST_RRR_SRC12_BYPASS( 33, 1, 2, pv.packhi.b, 0x41b3254a, 0x6c921d41, 0xe0fe43b3, 0x6a20254a )
  TEST_RRR_SRC12_BYPASS( 34, 2, 0, pv.packhi.b, 0x4bd205ef, 0xa4ed214b, 0x0f49fcd2, 0x533e05ef )
  TEST_RRR_SRC12_BYPASS( 35, 2, 1, pv.packhi.b, 0x3c76b9b1, 0xefef0a3c, 0x0fbc9376, 0x7028b9b1 )
  TEST_RRR_SRC12_BYPASS( 36, 2, 2, pv.packhi.b, 0x75c1eaea, 0x191fff75, 0xdb8d75c1, 0xba9aeaea )
  
  

  TEST_RRR_ZEROSRC1( 49, pv.packhi.b, 0x002108e9, 0x04b92b21, 0x50a908e9 )
  TEST_RRR_ZEROSRC1( 50, pv.packhi.b, 0x001bcb7e, 0x4453e51b, 0xf26fcb7e )
  
  TEST_RRR_ZEROSRC2( 51, pv.packhi.b, 0xf4008479, 0xade136f4, 0xd2d68479 )
  TEST_RRR_ZEROSRC2( 52, pv.packhi.b, 0x3100e777, 0x12a7bc31, 0x3897e777 )
  
  TEST_RRR_ZEROSRC3( 53, pv.packhi.b, 0x5d0d0000, 0xa6f9c05d, 0xb1b22f0d )
  TEST_RRR_ZEROSRC3( 54, pv.packhi.b, 0xf59c0000, 0x6c1520f5, 0x16965d9c )
  
  TEST_RRR_ZEROSRC12( 55, pv.packhi.b, 0x00000742, 0x39060742 )
  TEST_RRR_ZEROSRC12( 56, pv.packhi.b, 0x0000aa77, 0xe235aa77 )
  
  TEST_RRR_ZEROSRC123( 57, pv.packhi.b, 0x00000000 )
  TEST_RRR_ZEROSRC123( 58, pv.packhi.b, 0x00000000 )
  
  TEST_RRR_ZERODEST( 59, pv.packhi.b, 0x006f67a6, 0x862159c9 )
  TEST_RRR_ZERODEST( 60, pv.packhi.b, 0x298ac7ea, 0x615964e3 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
