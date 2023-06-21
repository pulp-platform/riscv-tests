# See LICENSE for license details.

#*****************************************************************************
# pv.add.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.add.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.add.sc.h, 0xf8f6f6f4, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.add.sc.h, 0x0709090c, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.add.sc.h, 0x55557777, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.add.sc.h, 0x9622c20e, 0x455b7147, 0xb93250c7 )
  TEST_RR_OP( 6, pv.add.sc.h, 0x6cd9231e, 0x6b1d2162, 0xe75801bc )
  TEST_RR_OP( 7, pv.add.sc.h, 0x8d0bf6a0, 0xc72a30bf, 0x0a8fc5e1 )
  TEST_RR_OP( 8, pv.add.sc.h, 0xb4bd5d32, 0xee4796bc, 0xfa7ec676 )
  TEST_RR_OP( 9, pv.add.sc.h, 0x98c666d5, 0x03aed1bd, 0x08379518 )
  TEST_RR_OP( 10, pv.add.sc.h, 0x1e8ecf98, 0x5c090d13, 0x3abcc285 )
  TEST_RR_OP( 11, pv.add.sc.h, 0x81bc43ab, 0xbdfc7feb, 0x56d7c3c0 )
  TEST_RR_OP( 12, pv.add.sc.h, 0xaa02fea1, 0x8f69e408, 0xf9641a99 )
  TEST_RR_OP( 13, pv.add.sc.h, 0xbfb0ef53, 0x699f9942, 0xf8b15611 )
  TEST_RR_OP( 14, pv.add.sc.h, 0xca904a49, 0x5e0eddc7, 0x2b266c82 )
  TEST_RR_OP( 15, pv.add.sc.h, 0x318c7706, 0x246f69e9, 0x0d2f0d1d )
  TEST_RR_OP( 16, pv.add.sc.h, 0x720da624, 0x54b988d0, 0xc06b1d54 )
  TEST_RR_OP( 17, pv.add.sc.h, 0x69c43b22, 0xf51dc67b, 0x593174a7 )
  TEST_RR_OP( 18, pv.add.sc.h, 0x2b9e8f73, 0xadef11c4, 0xe5c47daf )
  TEST_RR_OP( 19, pv.add.sc.h, 0x7220813f, 0x701f7f3e, 0x436e0201 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.add.sc.h, 0x8c5f871e, 0xaf96aa55, 0x7779dcc9 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.add.sc.h, 0x005563cf, 0x13e0775a, 0x2eb3ec75 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.add.sc.h, 0x8e158ae2, 0xa49fa16c, 0x33e4e976 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.add.sc.h, 0xcd677bc5, 0x6a381896, 0xa639632f )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.add.sc.h, 0xbe253434, 0x240b9a1a )
  TEST_RR_SRC12_EQ_DEST( 25, pv.add.sc.h, 0x75c20f5e, 0x6e1307af )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.add.sc.h, 0x00f6129e, 0x77a7894f, 0x77a7894f )
  TEST_RR_DEST_BYPASS( 45, 1, pv.add.sc.h, 0xdb75b528, 0x80e15a94, 0x80e15a94 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.add.sc.h, 0xc0984c96, 0x9a4d264b, 0x9a4d264b )
  TEST_RR_DEST_BYPASS( 47, 0, pv.add.sc.h, 0xbe5474ec, 0x03deba76, 0x03deba76 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.add.sc.h, 0x75920bf4, 0xef9885fa, 0xef9885fa )
  TEST_RR_DEST_BYPASS( 49, 2, pv.add.sc.h, 0xe3fadc28, 0x75e66e14, 0x75e66e14 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.add.sc.h, 0x27a13db2, 0x16dd2cee, 0x161310c4 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.add.sc.h, 0xf4cd349d, 0xda0519d5, 0xfacc1ac8 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.add.sc.h, 0xc57bbb18, 0x3ce33280, 0xaf698898 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.add.sc.h, 0x566aef1c, 0xc8e46196, 0xe9ca8d86 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.add.sc.h, 0x517811ba, 0x9d6d5daf, 0x1361b40b )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.add.sc.h, 0x5667f350, 0xd05c6d45, 0xdc60860b )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.add.sc.h, 0x9ca4d99c, 0x4f2c8c24, 0x32a74d78 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.add.sc.h, 0x959e76e7, 0x8bbc6d05, 0xb2e409e2 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.add.sc.h, 0x52929e7b, 0xaa79f662, 0xe5e1a819 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.add.sc.h, 0x976a6cbf, 0x3fce1523, 0xe308579c )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.add.sc.h, 0xd3eb6c6d, 0xa2793afb, 0x48813172 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.add.sc.h, 0xb95c5078, 0x70180734, 0x52b94944 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.add.sc.h, 0xbfc994ea, 0x7ae15002, 0x621644e8 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.add.sc.h, 0xe0fe2247, 0x61dba324, 0xefb67f23 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.add.sc.h, 0xeb5339c8, 0x3326819b, 0x67a0b82d )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.add.sc.h, 0x1c2538a8, 0x54e57168, 0x81b3c740 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.add.sc.h, 0x5d7c726a, 0xb746cc34, 0x1a64a636 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.add.sc.h, 0x2bbff946, 0xad7b7b02, 0x14707e44 )
  
  

  TEST_RR_ZEROSRC1( 50, pv.add.sc.h, 0x055d055d, 0x3487055d )
  TEST_RR_ZEROSRC1( 51, pv.add.sc.h, 0xff1bff1b, 0xb94eff1b )
  
  TEST_RR_ZEROSRC2( 52, pv.add.sc.h, 0xa96f10ef, 0xa96f10ef )
  TEST_RR_ZEROSRC2( 53, pv.add.sc.h, 0x4ea7deae, 0x4ea7deae )
  
  TEST_RR_ZEROSRC12( 54, pv.add.sc.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.add.sc.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.add.sc.h, 0x21d4c111, 0x5addee40 )
  TEST_RR_ZERODEST( 57, pv.add.sc.h, 0xb7d07a7a, 0xab6f95e2 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
