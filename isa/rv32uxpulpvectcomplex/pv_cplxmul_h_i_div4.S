# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.i.div4
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.i.div4 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.i.div4, 0x0c8c5678, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.i.div4, 0x0c8c5678, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.i.div4, 0x3fff5678, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.i.div4, 0xfd86927b, 0xfd5b4447, 0xe9efa514, 0x10ea927b )
  TEST_RRR_OP( 6, pv.cplxmul.h.i.div4, 0x01698391, 0x6b1de568, 0x96fcecab, 0x37148391 )
  TEST_RRR_OP( 7, pv.cplxmul.h.i.div4, 0x09697a3c, 0x52a112d3, 0xe26b4112, 0x1fe57a3c )
  TEST_RRR_OP( 8, pv.cplxmul.h.i.div4, 0xfd09893d, 0x5a629844, 0x43253c47, 0x2235893d )
  TEST_RRR_OP( 9, pv.cplxmul.h.i.div4, 0xf7f84aac, 0xc29329f7, 0xacd50a1a, 0x19724aac )
  TEST_RRR_OP( 10, pv.cplxmul.h.i.div4, 0xfd8508b1, 0x69bab287, 0x7f875173, 0x711008b1 )
  TEST_RRR_OP( 11, pv.cplxmul.h.i.div4, 0x06a91ae8, 0x00d0d057, 0xb6468066, 0x010f1ae8 )
  TEST_RRR_OP( 12, pv.cplxmul.h.i.div4, 0x1f7d8e8d, 0x7bb79b37, 0xd0b85bcd, 0xcf9a8e8d )
  TEST_RRR_OP( 13, pv.cplxmul.h.i.div4, 0xf12eecdb, 0xe6d358cb, 0x9387aec8, 0x5e1decdb )
  TEST_RRR_OP( 14, pv.cplxmul.h.i.div4, 0x177b4865, 0x09b476bf, 0x6960cd7c, 0x741b4865 )
  TEST_RRR_OP( 15, pv.cplxmul.h.i.div4, 0xfdb792b4, 0xbc6d9895, 0xbcac7854, 0xe96a92b4 )
  TEST_RRR_OP( 16, pv.cplxmul.h.i.div4, 0xef80501a, 0xcf78cc23, 0x2b377fdc, 0xd513501a )
  TEST_RRR_OP( 17, pv.cplxmul.h.i.div4, 0xf63c1bff, 0x0f01dab8, 0x67c6b4b2, 0x7fb01bff )
  TEST_RRR_OP( 18, pv.cplxmul.h.i.div4, 0xfdc86148, 0x28435a43, 0x17bdae95, 0xc8ff6148 )
  TEST_RRR_OP( 19, pv.cplxmul.h.i.div4, 0x08c37ef3, 0x1129a27e, 0xe5b7763d, 0x28567ef3 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 20, pv.cplxmul.h.i.div4, 0xfa41e5d0, 0x1015e5d0, 0x4114b323 )
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.i.div4, 0x0008c1c4, 0x8cf8c1c4, 0x6361ca17 )
  
  TEST_RRR_SRC2_EQ_DEST( 22, pv.cplxmul.h.i.div4, 0xf6f0d550, 0x0a53de52, 0x7caed550 )
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.i.div4, 0xfbc46f37, 0xb56ab105, 0xb2696f37 )
  
  TEST_RRR_SRC12_EQ_DEST( 24, pv.cplxmul.h.i.div4, 0xf6ee862c, 0x130f862c )
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.i.div4, 0xfdc90a02, 0xc7660a02 )
  
  TEST_RRR_DEST_BYPASS( 44, 0, pv.cplxmul.h.i.div4, 0xfa87953c, 0x3fd0f665, 0x6eece4cd, 0x8ac0953c )
  TEST_RRR_DEST_BYPASS( 45, 1, pv.cplxmul.h.i.div4, 0x05664286, 0xfa034c85, 0x1df8b154, 0x8adc4286 )
  TEST_RRR_DEST_BYPASS( 46, 2, pv.cplxmul.h.i.div4, 0x0ee8ca33, 0xe3608c76, 0xa6d75d30, 0x1227ca33 )
  TEST_RRR_DEST_BYPASS( 47, 0, pv.cplxmul.h.i.div4, 0xf4c55d4f, 0x635e53e1, 0xc003fc27, 0x0f805d4f )
  TEST_RRR_DEST_BYPASS( 48, 1, pv.cplxmul.h.i.div4, 0xf94fe4c2, 0xd884d079, 0x36ec14a3, 0xdda3e4c2 )
  TEST_RRR_DEST_BYPASS( 49, 2, pv.cplxmul.h.i.div4, 0x00b955f8, 0xd7c1effe, 0x5a34d2e9, 0xf95655f8 )
  TEST_RRR_SRC3_BYPASS( 50, 0, pv.cplxmul.h.i.div4, 0x05d85828, 0x540fab27, 0x1d4a412c, 0x623e5828 )
  TEST_RRR_SRC3_BYPASS( 51, 1, pv.cplxmul.h.i.div4, 0x195ae461, 0x8b0cd5b6, 0x1e9c85f0, 0x9b17e461 )
  TEST_RRR_SRC3_BYPASS( 52, 2, pv.cplxmul.h.i.div4, 0x00f55e6e, 0x25db3a61, 0xda9d469a, 0x3f395e6e )
  TEST_RRR_SRC3_BYPASS( 53, 0, pv.cplxmul.h.i.div4, 0x1166e2ab, 0x8d503a4d, 0xb4d38c19, 0x7357e2ab )
  TEST_RRR_SRC3_BYPASS( 54, 1, pv.cplxmul.h.i.div4, 0xe127fa76, 0xb1565282, 0x9a825e53, 0xf0e9fa76 )
  TEST_RRR_SRC3_BYPASS( 55, 2, pv.cplxmul.h.i.div4, 0xe2273679, 0xa3f17c67, 0x95a21641, 0xf04b3679 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 26, 0, 0, pv.cplxmul.h.i.div4, 0x10d79887, 0xf445b702, 0x9a7098f3, 0x30d49887 )
  TEST_RRR_SRC12_BYPASS( 27, 0, 1, pv.cplxmul.h.i.div4, 0x0084544a, 0x79fcf116, 0x1f600602, 0xd4f9544a )
  TEST_RRR_SRC12_BYPASS( 28, 0, 2, pv.cplxmul.h.i.div4, 0xf21550af, 0xa6b6aa03, 0x4bf706a6, 0xe12f50af )
  TEST_RRR_SRC12_BYPASS( 29, 1, 0, pv.cplxmul.h.i.div4, 0xfb91b4a0, 0x96921cdc, 0x8553f3f2, 0xc25eb4a0 )
  TEST_RRR_SRC12_BYPASS( 30, 1, 1, pv.cplxmul.h.i.div4, 0x17a55e34, 0xd6299eb0, 0x8c6ceb72, 0x85125e34 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 2, pv.cplxmul.h.i.div4, 0x0c5505ab, 0x2188e083, 0x9edd6121, 0x647605ab )
  TEST_RRR_SRC12_BYPASS( 32, 2, 0, pv.cplxmul.h.i.div4, 0xef789564, 0x101e5a7a, 0x8e0972aa, 0xa1239564 )
  TEST_RRR_SRC12_BYPASS( 33, 2, 1, pv.cplxmul.h.i.div4, 0xfbb1af6a, 0x3fd8b9d4, 0x163df5e4, 0xe0d2af6a )
  TEST_RRR_SRC12_BYPASS( 34, 2, 2, pv.cplxmul.h.i.div4, 0xf930d2f8, 0x258bf331, 0xa81e8527, 0x75c4d2f8 )
  TEST_RRR_SRC12_BYPASS( 35, 0, 0, pv.cplxmul.h.i.div4, 0xfa75d5c5, 0xf7281cab, 0xc4697fa0, 0xb23ed5c5 )
  TEST_RRR_SRC12_BYPASS( 36, 0, 1, pv.cplxmul.h.i.div4, 0x254d01e1, 0x9d2f8413, 0xaed6a482, 0x26c101e1 )
  TEST_RRR_SRC12_BYPASS( 37, 0, 2, pv.cplxmul.h.i.div4, 0x0dec9fe2, 0xe3be5885, 0x3889b4d6, 0x21799fe2 )
  TEST_RRR_SRC12_BYPASS( 38, 1, 0, pv.cplxmul.h.i.div4, 0xf3bb3e0a, 0x991200f0, 0x1e303d4b, 0xe6aa3e0a )
  TEST_RRR_SRC12_BYPASS( 39, 1, 1, pv.cplxmul.h.i.div4, 0x0817244a, 0xa096a55f, 0x1a8cbb5e, 0x56c2244a )
  TEST_RRR_SRC12_BYPASS( 40, 1, 2, pv.cplxmul.h.i.div4, 0x0bc6afe6, 0xde9e32eb, 0x722ff995, 0x5d3cafe6 )
  TEST_RRR_SRC12_BYPASS( 41, 2, 0, pv.cplxmul.h.i.div4, 0xffb7a370, 0x8f0d1d7c, 0x1f28096a, 0x6f93a370 )
  TEST_RRR_SRC12_BYPASS( 42, 2, 1, pv.cplxmul.h.i.div4, 0x2edbf25c, 0x94b36fb5, 0x5c2a805c, 0xf061f25c )
  TEST_RRR_SRC12_BYPASS( 43, 2, 2, pv.cplxmul.h.i.div4, 0xde5c471d, 0x64df88f5, 0x525cb674, 0xfa0f471d )
  
  

  TEST_RRR_ZEROSRC1( 56, pv.cplxmul.h.i.div4, 0x00004879, 0x50a8ea1d, 0x3c4b4879 )
  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.i.div4, 0x00005c08, 0xe73bf2d9, 0x05865c08 )
  
  TEST_RRR_ZEROSRC2( 58, pv.cplxmul.h.i.div4, 0x00007c09, 0x12dad9c5, 0x596d7c09 )
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.i.div4, 0x00009653, 0x93f54cf9, 0x43fb9653 )
  
  TEST_RRR_ZEROSRC3( 60, pv.cplxmul.h.i.div4, 0x09c60000, 0x0e4e660f, 0x25c05083 )
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.i.div4, 0x045e0000, 0x993b9ced, 0xede2fbb5 )
  
  TEST_RRR_ZEROSRC12( 62, pv.cplxmul.h.i.div4, 0x0000da02, 0xe90bda02 )
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.i.div4, 0x0000fe95, 0x5d70fe95 )
  
  TEST_RRR_ZEROSRC123( 64, pv.cplxmul.h.i.div4, 0x00000000 )
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.i.div4, 0x00000000 )
  
  TEST_RRR_ZERODEST( 66, pv.cplxmul.h.i.div4, 0x6bb0385f, 0x4cdee577 )
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.i.div4, 0x6f9a7a3a, 0xb556b4bb )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
