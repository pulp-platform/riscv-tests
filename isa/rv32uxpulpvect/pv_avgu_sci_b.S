# See LICENSE for license details.

#*****************************************************************************
# pv.avgu.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.avgu.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_UIMM6_OP( 2, pv.avgu.sci.b, 0x4f4e4e4d, 0x7f7e7d7c, 0x01f )
  TEST_UIMM6_OP( 3, pv.avgu.sci.b, 0x08101921, 0x00112233, 0x010 )
  TEST_UIMM6_OP( 4, pv.avgu.sci.b, 0x25110545, 0x13ead353, 0x038 )
  TEST_UIMM6_OP( 5, pv.avgu.sci.b, 0x77223c37, 0xdb31645b, 0x014 )
  TEST_UIMM6_OP( 6, pv.avgu.sci.b, 0x4c235406, 0x5e0b6dd1, 0x03b )
  TEST_UIMM6_OP( 7, pv.avgu.sci.b, 0x315d5038, 0x28806636, 0x03a )
  TEST_UIMM6_OP( 8, pv.avgu.sci.b, 0x49566074, 0x8aa4b8df, 0x009 )
  TEST_UIMM6_OP( 9, pv.avgu.sci.b, 0x06423002, 0xe35b38db, 0x029 )
  TEST_UIMM6_OP( 10, pv.avgu.sci.b, 0x513c4e6b, 0x7a5074ae, 0x028 )
  TEST_UIMM6_OP( 11, pv.avgu.sci.b, 0x23494063, 0x216e5ba2, 0x025 )
  TEST_UIMM6_OP( 12, pv.avgu.sci.b, 0x0b1e5c31, 0x0a30ac57, 0x00c )
  TEST_UIMM6_OP( 13, pv.avgu.sci.b, 0x57252641, 0xae4a4d82, 0x000 )
  TEST_UIMM6_OP( 14, pv.avgu.sci.b, 0x05606060, 0xd98e8e8f, 0x032 )
  TEST_UIMM6_OP( 15, pv.avgu.sci.b, 0x7d0a131d, 0xf6112336, 0x004 )
  TEST_UIMM6_OP( 16, pv.avgu.sci.b, 0x1c300c5a, 0x1a42f995, 0x01f )
  TEST_UIMM6_OP( 17, pv.avgu.sci.b, 0x405d7471, 0x669fcec7, 0x01b )
  TEST_UIMM6_OP( 18, pv.avgu.sci.b, 0x413d6a57, 0x635bb48f, 0x020 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_EQ_DEST( 19, pv.avgu.sci.b, 0x18373e0e, 0x12505ffe, 0x01e )
  TEST_UIMM6_SRC1_EQ_DEST( 20, pv.avgu.sci.b, 0x38795222, 0x4fd18323, 0x021 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_UIMM6_SRC1_BYPASS( 21, 0, pv.avgu.sci.b, 0x5b6c462f, 0xaccd8254, 0x00b )
  TEST_UIMM6_SRC1_BYPASS( 22, 1, pv.avgu.sci.b, 0x73551319, 0xca8e0a15, 0x01d )
  TEST_UIMM6_SRC1_BYPASS( 23, 2, pv.avgu.sci.b, 0x03340f1f, 0x06691e3f, 0x000 )
  TEST_UIMM6_SRC1_BYPASS( 24, 0, pv.avgu.sci.b, 0x5e2a076d, 0x8d25deab, 0x030 )
  TEST_UIMM6_SRC1_BYPASS( 25, 1, pv.avgu.sci.b, 0x28770812, 0x4fed1024, 0x001 )
  TEST_UIMM6_SRC1_BYPASS( 26, 2, pv.avgu.sci.b, 0x64444779, 0x925359bd, 0x036 )
  
  TEST_UIMM6_DEST_BYPASS( 27, 0, pv.avgu.sci.b, 0x00433858, 0xdd644e8e, 0x023 )
  TEST_UIMM6_DEST_BYPASS( 28, 1, pv.avgu.sci.b, 0x693d3f77, 0xc86f74e3, 0x00b )
  TEST_UIMM6_DEST_BYPASS( 29, 2, pv.avgu.sci.b, 0x497c125f, 0x59beeb85, 0x03a )
  TEST_UIMM6_DEST_BYPASS( 30, 0, pv.avgu.sci.b, 0x242c3e6e, 0x3a4a6ece, 0x00f )
  TEST_UIMM6_DEST_BYPASS( 31, 1, pv.avgu.sci.b, 0x10284333, 0x17477d5d, 0x00a )
  TEST_UIMM6_DEST_BYPASS( 32, 2, pv.avgu.sci.b, 0x444f0545, 0x869c0989, 0x002 )
  
  

  TEST_UIMM6_ZEROSRC1( 33, pv.avgu.sci.b, 0x1b1b1b1b, 0x036 )
  TEST_UIMM6_ZEROSRC1( 34, pv.avgu.sci.b, 0x1e1e1e1e, 0x03d )
  
  TEST_UIMM6_ZERODEST( 35, pv.avgu.sci.b, 0x7c1f936f, 0x03b )
  TEST_UIMM6_ZERODEST( 36, pv.avgu.sci.b, 0x31babb67, 0x01b )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
