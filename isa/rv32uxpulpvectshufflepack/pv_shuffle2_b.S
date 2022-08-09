# See LICENSE for license details.

#*****************************************************************************
# pv.shuffle2.b
#-----------------------------------------------------------------------------
#
# Test pv.shuffle2.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.shuffle2.b, 0xffffffff, 0x44332211, 0x00000000, 0xccddeeff )
  TEST_RRR_OP( 3, pv.shuffle2.b, 0xffffffee, 0x44332211, 0x00000001, 0xccddeeff )
  TEST_RRR_OP( 4, pv.shuffle2.b, 0xffffffdd, 0x44332211, 0x00000002, 0xccddeeff )
  TEST_RRR_OP( 5, pv.shuffle2.b, 0xffffffcc, 0x44332211, 0x00000003, 0xccddeeff )
  TEST_RRR_OP( 6, pv.shuffle2.b, 0xffffeeff, 0x44332211, 0x00000100, 0xccddeeff )
  TEST_RRR_OP( 7, pv.shuffle2.b, 0xffffddff, 0x44332211, 0x00000200, 0xccddeeff )
  TEST_RRR_OP( 8, pv.shuffle2.b, 0xffffccff, 0x44332211, 0x00000300, 0xccddeeff )
  TEST_RRR_OP( 9, pv.shuffle2.b, 0xffeeffff, 0x44332211, 0x00010000, 0xccddeeff )
  TEST_RRR_OP( 10, pv.shuffle2.b, 0xffddffff, 0x44332211, 0x00020000, 0xccddeeff )
  TEST_RRR_OP( 11, pv.shuffle2.b, 0xffccffff, 0x44332211, 0x00030000, 0xccddeeff )
  TEST_RRR_OP( 12, pv.shuffle2.b, 0xeeffffff, 0x44332211, 0x01000000, 0xccddeeff )
  TEST_RRR_OP( 13, pv.shuffle2.b, 0xddffffff, 0x44332211, 0x02000000, 0xccddeeff )
  TEST_RRR_OP( 14, pv.shuffle2.b, 0xccffffff, 0x44332211, 0x03000000, 0xccddeeff )
  TEST_RRR_OP( 15, pv.shuffle2.b, 0x11111111, 0x44332211, 0x04040404, 0xccddeeff )
  TEST_RRR_OP( 16, pv.shuffle2.b, 0x11111122, 0x44332211, 0x04040405, 0xccddeeff )
  TEST_RRR_OP( 17, pv.shuffle2.b, 0x11111133, 0x44332211, 0x04040406, 0xccddeeff )
  TEST_RRR_OP( 18, pv.shuffle2.b, 0x11111144, 0x44332211, 0x04040407, 0xccddeeff )
  TEST_RRR_OP( 19, pv.shuffle2.b, 0x11112211, 0x44332211, 0x04040504, 0xccddeeff )
  TEST_RRR_OP( 20, pv.shuffle2.b, 0x11113311, 0x44332211, 0x04040604, 0xccddeeff )
  TEST_RRR_OP( 21, pv.shuffle2.b, 0x11114411, 0x44332211, 0x04040704, 0xccddeeff )
  TEST_RRR_OP( 22, pv.shuffle2.b, 0x11221111, 0x44332211, 0x04050404, 0xccddeeff )
  TEST_RRR_OP( 23, pv.shuffle2.b, 0x11331111, 0x44332211, 0x04060404, 0xccddeeff )
  TEST_RRR_OP( 24, pv.shuffle2.b, 0x11441111, 0x44332211, 0x04070404, 0xccddeeff )
  TEST_RRR_OP( 25, pv.shuffle2.b, 0x22111111, 0x44332211, 0x05040404, 0xccddeeff )
  TEST_RRR_OP( 26, pv.shuffle2.b, 0x33111111, 0x44332211, 0x06040404, 0xccddeeff )
  TEST_RRR_OP( 27, pv.shuffle2.b, 0x44111111, 0x44332211, 0x07040404, 0xccddeeff )
  TEST_RRR_OP( 28, pv.shuffle2.b, 0xdd24d4ae, 0x5f24d481, 0x18a60da2, 0x79ae83dd )
  TEST_RRR_OP( 29, pv.shuffle2.b, 0xa8afe72a, 0xafa1812a, 0x790faa24, 0x91e7a8f9 )
  TEST_RRR_OP( 30, pv.shuffle2.b, 0xf35fd3f3, 0xf3d32a5f, 0x47d43687, 0x4464e0fc )
  TEST_RRR_OP( 31, pv.shuffle2.b, 0xb531bae8, 0xe8312f29, 0xc36601e7, 0xb598ba4d )
  TEST_RRR_OP( 32, pv.shuffle2.b, 0x9c25daf8, 0xdaf89cdd, 0x65c9afd6, 0x5f3d2597 )
  TEST_RRR_OP( 33, pv.shuffle2.b, 0xc7c45353, 0xc4aec726, 0x0db77bf3, 0x53ea07ff )
  TEST_RRR_OP( 34, pv.shuffle2.b, 0xbcfd9bfd, 0x5017fd1d, 0xe84d112d, 0xe6299bbc )
  TEST_RRR_OP( 35, pv.shuffle2.b, 0x0f6293c5, 0xab040f93, 0x95218c0a, 0x1cc562b4 )
  TEST_RRR_OP( 36, pv.shuffle2.b, 0x72a0a072, 0x18a0b2c0, 0x99c65e21, 0x58ed725e )
  TEST_RRR_OP( 37, pv.shuffle2.b, 0x2222711c, 0x6522c296, 0x5edee928, 0x43f0711c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 38, pv.shuffle2.b, 0xd0606060, 0x60d018b2, 0x02eb5b4f )
  TEST_RRR_SRC1_EQ_DEST( 39, pv.shuffle2.b, 0xf90f34f9, 0x0f08f934, 0x6d87a41d )
  
  TEST_RRR_SRC2_EQ_DEST( 40, pv.shuffle2.b, 0x4f5ad9f5, 0x5d324fbe, 0xf5d95acb )
  TEST_RRR_SRC2_EQ_DEST( 41, pv.shuffle2.b, 0xaafa64cc, 0xaacc9b64, 0x77fa8456 )
  
  TEST_RRR_SRC12_EQ_DEST( 42, pv.shuffle2.b, 0x8d8d8d0c, 0xa1398d0c )
  TEST_RRR_SRC12_EQ_DEST( 43, pv.shuffle2.b, 0x5796fd00, 0x9657fd00 )
  
  TEST_RRR_DEST_BYPASS( 62, 0, pv.shuffle2.b, 0xaa2aec1a, 0xecf22c1a, 0x394ba7c4, 0x2afaaac6 )
  TEST_RRR_DEST_BYPASS( 63, 1, pv.shuffle2.b, 0x768181a5, 0x31a53f8d, 0x634ab21e, 0x7681fdfd )
  TEST_RRR_DEST_BYPASS( 64, 2, pv.shuffle2.b, 0x1818c067, 0xd78cc05a, 0x50b89d1b, 0x671ac418 )
  TEST_RRR_DEST_BYPASS( 65, 0, pv.shuffle2.b, 0x16ac16b0, 0x23b0166a, 0x3d69056e, 0x13c9ac16 )
  TEST_RRR_DEST_BYPASS( 66, 1, pv.shuffle2.b, 0x42127ab7, 0x4c7a67e4, 0x529bde19, 0x1242b76b )
  TEST_RRR_DEST_BYPASS( 67, 2, pv.shuffle2.b, 0x5af408fd, 0x5c5a7608, 0xeeead4a1, 0x87f4fde7 )
  TEST_RRR_SRC3_BYPASS( 68, 0, pv.shuffle2.b, 0x74db7474, 0xabb56bc6, 0xa05b3018, 0xdb023f74 )
  TEST_RRR_SRC3_BYPASS( 69, 1, pv.shuffle2.b, 0xc46f6f1d, 0xc4bb1d25, 0x6f11c99d, 0xa05b6f54 )
  TEST_RRR_SRC3_BYPASS( 70, 2, pv.shuffle2.b, 0xe14c224a, 0x4c4a03e1, 0x0cff014e, 0x1768223d )
  TEST_RRR_SRC3_BYPASS( 71, 0, pv.shuffle2.b, 0xd8be0b0b, 0x974cbece, 0xe98d68b8, 0x2d45d80b )
  TEST_RRR_SRC3_BYPASS( 72, 1, pv.shuffle2.b, 0x30309530, 0x9889ff30, 0xdc8cf09c, 0xc02d0795 )
  TEST_RRR_SRC3_BYPASS( 73, 2, pv.shuffle2.b, 0xbeb9b9e8, 0xa027f7be, 0x4cc1c9e2, 0xaae8b9c0 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 44, 0, 0, pv.shuffle2.b, 0xb7d7dad7, 0x864b96b3, 0x93c81268, 0xb7da16d7 )
  TEST_RRR_SRC12_BYPASS( 45, 0, 1, pv.shuffle2.b, 0xbfb534b4, 0x72b54946, 0x41f6b87a, 0x7fb4bf34 )
  TEST_RRR_SRC12_BYPASS( 46, 0, 2, pv.shuffle2.b, 0x8dd8b335, 0xd80f2c58, 0x681f5a09, 0xfbb3358d )
  TEST_RRR_SRC12_BYPASS( 47, 1, 0, pv.shuffle2.b, 0x00bc9600, 0x96fe051a, 0x02b36f5a, 0xbc008d6e )
  TEST_RRR_SRC12_BYPASS( 48, 1, 1, pv.shuffle2.b, 0x8cd1c5d1, 0xdbfad102, 0xd2054375, 0xc58cb3e5 )
  TEST_RRR_SRC12_BYPASS( 49, 1, 2, pv.shuffle2.b, 0x2e13ca6f, 0xca13a42e, 0x149ea753, 0x6fb192cf )
  TEST_RRR_SRC12_BYPASS( 50, 2, 0, pv.shuffle2.b, 0xe6cdabe6, 0x149cc4e6, 0x4c20628c, 0xa6ab67cd )
  TEST_RRR_SRC12_BYPASS( 51, 2, 1, pv.shuffle2.b, 0x911a1a08, 0x081a11c9, 0x7bc66e57, 0x91b498db )
  TEST_RRR_SRC12_BYPASS( 52, 2, 2, pv.shuffle2.b, 0x848070d0, 0x368cd080, 0x12f4199d, 0x678470bc )
  TEST_RRR_SRC12_BYPASS( 53, 0, 0, pv.shuffle2.b, 0xbe8f2187, 0xbe9b87b8, 0x6f3b821d, 0x8f21887c )
  TEST_RRR_SRC12_BYPASS( 54, 0, 1, pv.shuffle2.b, 0xb85cb85c, 0xa720b2b8, 0xcce2a4f2, 0x8a5cda6d )
  TEST_RRR_SRC12_BYPASS( 55, 0, 2, pv.shuffle2.b, 0xdd8997ca, 0x97894ddd, 0x048edfa9, 0x81e1ca2e )
  TEST_RRR_SRC12_BYPASS( 56, 1, 0, pv.shuffle2.b, 0x57120df0, 0x0df02e58, 0x60e9ffae, 0x47ad1257 )
  TEST_RRR_SRC12_BYPASS( 57, 1, 1, pv.shuffle2.b, 0x871e8181, 0x03548781, 0x3d5a0cfc, 0x991ea90e )
  TEST_RRR_SRC12_BYPASS( 58, 1, 2, pv.shuffle2.b, 0xbebe54fa, 0x9cbe9a75, 0xb64ea1d2, 0xebfa54e5 )
  TEST_RRR_SRC12_BYPASS( 59, 2, 0, pv.shuffle2.b, 0xed289e73, 0x5028069e, 0x8a7ea421, 0x0ded7386 )
  TEST_RRR_SRC12_BYPASS( 60, 2, 1, pv.shuffle2.b, 0x68568768, 0x4eb56856, 0x2574722d, 0xec87debd )
  TEST_RRR_SRC12_BYPASS( 61, 2, 2, pv.shuffle2.b, 0xb6badb84, 0xdb5c84ba, 0xf3bcafe5, 0xb639cf69 )
  
  

  TEST_RRR_ZEROSRC1( 74, pv.shuffle2.b, 0x000000b7, 0x6d672e01, 0xe57db7b8 )
  TEST_RRR_ZEROSRC1( 75, pv.shuffle2.b, 0x00d60068, 0x1d309f31, 0x17dc68d6 )
  
  TEST_RRR_ZEROSRC2( 76, pv.shuffle2.b, 0x96969696, 0x3c428809, 0x29a53896 )
  TEST_RRR_ZEROSRC2( 77, pv.shuffle2.b, 0xcececece, 0x6ac0b28f, 0x1a9965ce )
  
  TEST_RRR_ZEROSRC3( 78, pv.shuffle2.b, 0x0000b300, 0xc77263b3, 0xc05a4c20 )
  TEST_RRR_ZEROSRC3( 79, pv.shuffle2.b, 0x8b000000, 0x02d68b7c, 0xb56a2891 )
  
  TEST_RRR_ZEROSRC12( 80, pv.shuffle2.b, 0xa1a1a1a1, 0x767e97a1 )
  TEST_RRR_ZEROSRC12( 81, pv.shuffle2.b, 0x96969696, 0x1abe5396 )
  
  TEST_RRR_ZEROSRC123( 82, pv.shuffle2.b, 0x00000000 )
  TEST_RRR_ZEROSRC123( 83, pv.shuffle2.b, 0x00000000 )
  
  TEST_RRR_ZERODEST( 84, pv.shuffle2.b, 0xc4ad8ed2, 0xa9490a4d )
  TEST_RRR_ZERODEST( 85, pv.shuffle2.b, 0x1444a01c, 0x3f6547fb )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
