# See LICENSE for license details.

#*****************************************************************************
# pv.add.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.add.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.add.sci.b, 0x9e9d9c9b, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.add.sci.b, 0x60616264, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.add.sci.b, 0x10213243, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.add.sci.b, 0xaf827143, 0x9d705f31, 0x012 )
  TEST_SIMM6_OP( 6, pv.add.sci.b, 0x91d78a7c, 0x8ed48779, 0x003 )
  TEST_SIMM6_OP( 7, pv.add.sci.b, 0x36fbcf26, 0x26ebbf16, 0x010 )
  TEST_SIMM6_OP( 8, pv.add.sci.b, 0x434236c4, 0x28271ba9, 0x01b )
  TEST_SIMM6_OP( 9, pv.add.sci.b, 0x2993c7f5, 0x228cc0ee, 0x007 )
  TEST_SIMM6_OP( 10, pv.add.sci.b, 0xb1f5b924, 0xc307cb36, 0xffffffee )
  TEST_SIMM6_OP( 11, pv.add.sci.b, 0x8ea08e62, 0x73857347, 0x01b )
  TEST_SIMM6_OP( 12, pv.add.sci.b, 0xfe4b9699, 0x125faaad, 0xffffffec )
  TEST_SIMM6_OP( 13, pv.add.sci.b, 0x59dc0e27, 0x5cdf112a, 0xfffffffd )
  TEST_SIMM6_OP( 14, pv.add.sci.b, 0x1ca1d4c1, 0x2db2e5d2, 0xffffffef )
  TEST_SIMM6_OP( 15, pv.add.sci.b, 0xd5ca2f34, 0xe8dd4247, 0xffffffed )
  TEST_SIMM6_OP( 16, pv.add.sci.b, 0x23255a67, 0x14164b58, 0x00f )
  TEST_SIMM6_OP( 17, pv.add.sci.b, 0xa1958270, 0x9c907d6b, 0x005 )
  TEST_SIMM6_OP( 18, pv.add.sci.b, 0x43022b40, 0x2ae91227, 0x019 )
  TEST_SIMM6_OP( 19, pv.add.sci.b, 0xd409ef8b, 0xb8edd36f, 0x01c )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.add.sci.b, 0xbdf9c4ce, 0xca06d1db, 0xfffffff3 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.add.sci.b, 0x63e71219, 0x7d012c33, 0xffffffe6 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.add.sci.b, 0x13599b97, 0x1a60a29e, 0xfffffff9 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.add.sci.b, 0x63f245c3, 0x6af94cca, 0xfffffff9 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.add.sci.b, 0x4713f7e7, 0x32fee2d2, 0x015 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.add.sci.b, 0x6f153fa9, 0x812751bb, 0xffffffee )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.add.sci.b, 0xd39e82a5, 0xc7927699, 0x00c )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.add.sci.b, 0xa4977d71, 0x9083695d, 0x014 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.add.sci.b, 0x977f358c, 0xa58d439a, 0xfffffff2 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.add.sci.b, 0x3afd6de5, 0x521585fd, 0xffffffe8 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.add.sci.b, 0x7f8647b9, 0x757c3daf, 0x00a )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.add.sci.b, 0x46d26dce, 0x2db954b5, 0x019 )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.add.sci.b, 0xfef2c7e1, 0x0c00d5ef, 0xfffffff2 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.add.sci.b, 0x6ae024a6, 0x5cd21698, 0x00e )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.add.sci.b, 0xf1f1f1f1, 0xfffffff1 )
  TEST_SIMM6_ZEROSRC1( 35, pv.add.sci.b, 0xecececec, 0xffffffec )
  
  TEST_SIMM6_ZERODEST( 36, pv.add.sci.b, 0xab693d3e, 0xffffffeb )
  TEST_SIMM6_ZERODEST( 37, pv.add.sci.b, 0xd44be1ec, 0x016 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
