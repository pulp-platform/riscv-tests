# See LICENSE for license details.

#*****************************************************************************
# pv.minu.h
#-----------------------------------------------------------------------------
#
# Test pv.minu.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.minu.h, 0x7b7a7978, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.minu.h, 0x00112233, 0x00112233, 0x77665544 )
  TEST_RR_OP( 4, pv.minu.h, 0x73dfa819, 0x73dffc12, 0xd11ba819 )
  TEST_RR_OP( 5, pv.minu.h, 0x44cd6fe2, 0x8e746fe2, 0x44cda443 )
  TEST_RR_OP( 6, pv.minu.h, 0x1d2f350b, 0xc26e350b, 0x1d2f5bad )
  TEST_RR_OP( 7, pv.minu.h, 0x2cb89c02, 0x3d5ac474, 0x2cb89c02 )
  TEST_RR_OP( 8, pv.minu.h, 0x58e866a9, 0x58e8a4fe, 0x780f66a9 )
  TEST_RR_OP( 9, pv.minu.h, 0x1564fc74, 0x1564fc74, 0x618dfe99 )
  TEST_RR_OP( 10, pv.minu.h, 0x01f90a8c, 0x01f9b18c, 0x63ae0a8c )
  TEST_RR_OP( 11, pv.minu.h, 0x5ebd8d7d, 0x5ebd8d7d, 0xbcfff477 )
  TEST_RR_OP( 12, pv.minu.h, 0x814a1529, 0x814a1529, 0xd3dd6343 )
  TEST_RR_OP( 13, pv.minu.h, 0x4fefd895, 0xf476f0cc, 0x4fefd895 )
  TEST_RR_OP( 14, pv.minu.h, 0x475b64cd, 0x475b64cd, 0x95bee224 )
  TEST_RR_OP( 15, pv.minu.h, 0x0e5539a5, 0x0e5539a5, 0x421baa95 )
  TEST_RR_OP( 16, pv.minu.h, 0x460a8ba1, 0x87e4ba24, 0x460a8ba1 )
  TEST_RR_OP( 17, pv.minu.h, 0x25ec2024, 0xc7832024, 0x25ec90e7 )
  TEST_RR_OP( 18, pv.minu.h, 0x807b1003, 0x807b1003, 0xfb08a092 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 19, pv.minu.h, 0x17054f45, 0x17054f45, 0x670afe91 )
  TEST_RR_SRC1_EQ_DEST( 20, pv.minu.h, 0x8cabb3cc, 0x8cabb3cc, 0xf711e081 )
  
  TEST_RR_SRC2_EQ_DEST( 21, pv.minu.h, 0x32e347e6, 0x32e347e6, 0xd5aea44c )
  TEST_RR_SRC2_EQ_DEST( 22, pv.minu.h, 0x262c7092, 0x262c7092, 0xb18cd1c7 )
  
  TEST_RR_SRC12_EQ_DEST( 23, pv.minu.h, 0x10a9fadc, 0x10a9fadc )
  TEST_RR_SRC12_EQ_DEST( 24, pv.minu.h, 0x208caa23, 0x208caa23 )
  
  TEST_RR_DEST_BYPASS( 43, 0, pv.minu.h, 0x1bd84b47, 0x1bd84b47, 0x1bd84b47 )
  TEST_RR_DEST_BYPASS( 44, 1, pv.minu.h, 0x441e96f0, 0x441e96f0, 0x441e96f0 )
  TEST_RR_DEST_BYPASS( 45, 2, pv.minu.h, 0x70b8efb4, 0x70b8efb4, 0x70b8efb4 )
  TEST_RR_DEST_BYPASS( 46, 0, pv.minu.h, 0xd766eb84, 0xd766eb84, 0xd766eb84 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.minu.h, 0xe1eb4df1, 0xe1eb4df1, 0xe1eb4df1 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.minu.h, 0xfd8b43e6, 0xfd8b43e6, 0xfd8b43e6 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 25, 0, 0, pv.minu.h, 0x9791192d, 0x9791192d, 0xc1e86024 )
  TEST_RR_SRC12_BYPASS( 26, 0, 1, pv.minu.h, 0x0e9450c3, 0xcf2050c3, 0x0e94f6c0 )
  TEST_RR_SRC12_BYPASS( 27, 0, 2, pv.minu.h, 0x331615a4, 0x3316807d, 0xb94215a4 )
  TEST_RR_SRC12_BYPASS( 28, 1, 0, pv.minu.h, 0x983a549a, 0x983af1ef, 0xe8e1549a )
  TEST_RR_SRC12_BYPASS( 29, 1, 1, pv.minu.h, 0x50c55651, 0x50c5f7a2, 0x97715651 )
  TEST_RR_SRC12_BYPASS( 30, 1, 2, pv.minu.h, 0x88a5392d, 0xc765e95e, 0x88a5392d )
  TEST_RR_SRC12_BYPASS( 31, 2, 0, pv.minu.h, 0x65571198, 0x802f34a2, 0x65571198 )
  TEST_RR_SRC12_BYPASS( 32, 2, 1, pv.minu.h, 0x523c90e3, 0xdd5f90e3, 0x523c9b9f )
  TEST_RR_SRC12_BYPASS( 33, 2, 2, pv.minu.h, 0x4a7a57a0, 0x4a7a57a0, 0xaae0a341 )
  TEST_RR_SRC12_BYPASS( 34, 0, 0, pv.minu.h, 0x6a643178, 0xdebe3178, 0x6a64d44f )
  TEST_RR_SRC12_BYPASS( 35, 0, 1, pv.minu.h, 0x2afa9c7d, 0xbf1b9c7d, 0x2afadcc3 )
  TEST_RR_SRC12_BYPASS( 36, 0, 2, pv.minu.h, 0x2d34c09e, 0xe9f2c09e, 0x2d34ca70 )
  TEST_RR_SRC12_BYPASS( 37, 1, 0, pv.minu.h, 0x47181ecf, 0xfe371ecf, 0x4718a069 )
  TEST_RR_SRC12_BYPASS( 38, 1, 1, pv.minu.h, 0x0eff0475, 0x9b5739d3, 0x0eff0475 )
  TEST_RR_SRC12_BYPASS( 39, 1, 2, pv.minu.h, 0x349b0bb0, 0x4f5630f2, 0x349b0bb0 )
  TEST_RR_SRC12_BYPASS( 40, 2, 0, pv.minu.h, 0x17ae1ab2, 0x8f7ec82a, 0x17ae1ab2 )
  TEST_RR_SRC12_BYPASS( 41, 2, 1, pv.minu.h, 0x0519531d, 0x633e531d, 0x051958b7 )
  TEST_RR_SRC12_BYPASS( 42, 2, 2, pv.minu.h, 0x60357eb6, 0x6035f8fa, 0xa6ee7eb6 )
  
  

  TEST_RR_ZEROSRC1( 49, pv.minu.h, 0x00000000, 0x9dfd3443 )
  TEST_RR_ZEROSRC1( 50, pv.minu.h, 0x00000000, 0x197a16a7 )
  
  TEST_RR_ZEROSRC2( 51, pv.minu.h, 0x00000000, 0xeeba1526 )
  TEST_RR_ZEROSRC2( 52, pv.minu.h, 0x00000000, 0x47b51828 )
  
  TEST_RR_ZEROSRC12( 53, pv.minu.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 54, pv.minu.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 55, pv.minu.h, 0x4436f30e, 0xc1b8de34 )
  TEST_RR_ZERODEST( 56, pv.minu.h, 0xabeb2568, 0x4441cfac )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
