# See LICENSE for license details.

#*****************************************************************************
# pv.max.h
#-----------------------------------------------------------------------------
#
# Test pv.max.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.max.h, 0x7f7e7d7c, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.max.h, 0x84858688, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.max.h, 0x77665544, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.max.h, 0x638b0dd6, 0x5ad30dd6, 0x638b091f )
  TEST_RR_OP( 6, pv.max.h, 0x39ac7941, 0xf7547941, 0x39aca453 )
  TEST_RR_OP( 7, pv.max.h, 0x3774069f, 0x3774069f, 0xe83aca50 )
  TEST_RR_OP( 8, pv.max.h, 0x713eece3, 0x9e02dc4e, 0x713eece3 )
  TEST_RR_OP( 9, pv.max.h, 0x7bfcf7a5, 0x7bfcf7a5, 0x897bc524 )
  TEST_RR_OP( 10, pv.max.h, 0x76224ca8, 0xd5b0fada, 0x76224ca8 )
  TEST_RR_OP( 11, pv.max.h, 0x698aba9b, 0x698a8efd, 0x5583ba9b )
  TEST_RR_OP( 12, pv.max.h, 0x513752bd, 0x513794e0, 0x498552bd )
  TEST_RR_OP( 13, pv.max.h, 0xbf913bc6, 0xbf913bc6, 0x8a6fd547 )
  TEST_RR_OP( 14, pv.max.h, 0x2d0699c3, 0x2d0695f3, 0xf98f99c3 )
  TEST_RR_OP( 15, pv.max.h, 0x30ac66a7, 0xe1099d27, 0x30ac66a7 )
  TEST_RR_OP( 16, pv.max.h, 0x29992cca, 0x29992cca, 0xee1201ef )
  TEST_RR_OP( 17, pv.max.h, 0x106a5d11, 0x106a5d11, 0x0c7a44e7 )
  TEST_RR_OP( 18, pv.max.h, 0xc70f2c3d, 0xab6c2c3d, 0xc70fa6b2 )
  TEST_RR_OP( 19, pv.max.h, 0x1bd8af2b, 0x1bd884f0, 0x183aaf2b )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.max.h, 0x630762ad, 0x323162ad, 0x630747c5 )
  TEST_RR_SRC1_EQ_DEST( 21, pv.max.h, 0x22f3560c, 0x1f25cd54, 0x22f3560c )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.max.h, 0x2ea01327, 0xdb6b1327, 0x2ea0e91e )
  TEST_RR_SRC2_EQ_DEST( 23, pv.max.h, 0x56257dd1, 0x56257dd1, 0xd0db81ff )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.max.h, 0x8a3a6b1a, 0x8a3a6b1a )
  TEST_RR_SRC12_EQ_DEST( 25, pv.max.h, 0x34da880e, 0x34da880e )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.max.h, 0xce8906bb, 0xce8906bb, 0xce8906bb )
  TEST_RR_DEST_BYPASS( 45, 1, pv.max.h, 0x11346ff4, 0x11346ff4, 0x11346ff4 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.max.h, 0xa3386712, 0xa3386712, 0xa3386712 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.max.h, 0x6700d46e, 0x6700d46e, 0x6700d46e )
  TEST_RR_DEST_BYPASS( 48, 1, pv.max.h, 0x26244fe1, 0x26244fe1, 0x26244fe1 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.max.h, 0x34cd46c6, 0x34cd46c6, 0x34cd46c6 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.max.h, 0x748afc5b, 0x6f06fc5b, 0x748ad6cb )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.max.h, 0xd52c4ffd, 0xd52c4ffd, 0xac1cc32c )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.max.h, 0x3eb62d0a, 0x97702d0a, 0x3eb6fb7a )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.max.h, 0x5f2cac68, 0x5f2cac68, 0xfe80aab3 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.max.h, 0x3f6dc145, 0x08c9c145, 0x3f6d937d )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.max.h, 0x31c13d2d, 0x98093d2d, 0x31c1d4a2 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.max.h, 0x6043f91e, 0x6043cd56, 0xa4b0f91e )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.max.h, 0x4ece0778, 0x4eced559, 0x3cde0778 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.max.h, 0x5f5ae6fe, 0x5f5a9759, 0xba71e6fe )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.max.h, 0x788967ff, 0x78899738, 0xabfd67ff )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.max.h, 0x4899d6e5, 0xaf97d2f7, 0x4899d6e5 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.max.h, 0x2decf60d, 0x2decdf2d, 0xbdeff60d )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.max.h, 0x20341cb0, 0xfed79565, 0x20341cb0 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.max.h, 0x5345718d, 0xe0f7718d, 0x53453024 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.max.h, 0x0c6c5db1, 0x0c6c5db1, 0xe28afc7a )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.max.h, 0x606bc435, 0x2088c435, 0x606bbd3d )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.max.h, 0x9e145fcf, 0x9546c7df, 0x9e145fcf )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.max.h, 0xaf1a5d0d, 0xaf1a3ea5, 0x9aab5d0d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.max.h, 0x00000000, 0xf7478dae )
  TEST_RR_ZEROSRC1( 51, pv.max.h, 0x00001032, 0xc8561032 )
  
  TEST_RR_ZEROSRC2( 52, pv.max.h, 0x148f0000, 0x148f9cc0 )
  TEST_RR_ZEROSRC2( 53, pv.max.h, 0x00007b27, 0xbc177b27 )
  
  TEST_RR_ZEROSRC12( 54, pv.max.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.max.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.max.h, 0x57ce04ef, 0x2d4b0c08 )
  TEST_RR_ZERODEST( 57, pv.max.h, 0xd25837d9, 0xe0f316f7 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
