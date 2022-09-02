# See LICENSE for license details.

#*****************************************************************************
# pv.min.sci.b
#-----------------------------------------------------------------------------
#
# Test pv.min.sci.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.min.sci.b, 0x1f1f1f1f, 0x7f7e7d7c, 0x01f )
  TEST_SIMM6_OP( 3, pv.min.sci.b, 0x80818284, 0x80818284, 0xffffffe0 )
  TEST_SIMM6_OP( 4, pv.min.sci.b, 0x00101010, 0x00112233, 0x010 )
  TEST_SIMM6_OP( 5, pv.min.sci.b, 0x02b1c49f, 0x09b1c49f, 0x002 )
  TEST_SIMM6_OP( 6, pv.min.sci.b, 0xc8f69ff2, 0xc8209ff2, 0xfffffff6 )
  TEST_SIMM6_OP( 7, pv.min.sci.b, 0xa3070707, 0xa3727016, 0x007 )
  TEST_SIMM6_OP( 8, pv.min.sci.b, 0xfa11baec, 0xfa55baec, 0x011 )
  TEST_SIMM6_OP( 9, pv.min.sci.b, 0xe3dfe3e3, 0x04df1b10, 0xffffffe3 )
  TEST_SIMM6_OP( 10, pv.min.sci.b, 0xecafb7ec, 0x4bafb746, 0xffffffec )
  TEST_SIMM6_OP( 11, pv.min.sci.b, 0x9c0d0d0d, 0x9c1b291c, 0x00d )
  TEST_SIMM6_OP( 12, pv.min.sci.b, 0x1e1e1e1e, 0x22684766, 0x01e )
  TEST_SIMM6_OP( 13, pv.min.sci.b, 0xfcfcb1fc, 0x4416b152, 0xfffffffc )
  TEST_SIMM6_OP( 14, pv.min.sci.b, 0xf4f4f4f4, 0x52283d31, 0xfffffff4 )
  TEST_SIMM6_OP( 15, pv.min.sci.b, 0x8de3e397, 0x8d272f97, 0xffffffe3 )
  TEST_SIMM6_OP( 16, pv.min.sci.b, 0xeaf1f1f1, 0xea412e1b, 0xfffffff1 )
  TEST_SIMM6_OP( 17, pv.min.sci.b, 0xab0ff70f, 0xab3af765, 0x00f )
  TEST_SIMM6_OP( 18, pv.min.sci.b, 0x19198400, 0x5c588400, 0x019 )
  TEST_SIMM6_OP( 19, pv.min.sci.b, 0xf4f4f4f4, 0x7772fe5e, 0xfffffff4 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.min.sci.b, 0xeff489a0, 0xef6f89a0, 0xfffffff4 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.min.sci.b, 0x1e1e1e93, 0x6f5a2193, 0x01e )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.min.sci.b, 0xe4e4d5e4, 0x2a69d504, 0xffffffe4 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.min.sci.b, 0xe69de6e6, 0x4f9d3217, 0xffffffe6 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.min.sci.b, 0xf7f7f4de, 0x2a6bf4de, 0xfffffff7 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.min.sci.b, 0xfcfcfcfc, 0x7317562c, 0xfffffffc )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.min.sci.b, 0x1d8eaf1d, 0x388eaf79, 0x01d )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.min.sci.b, 0x13131313, 0x466d2842, 0x013 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.min.sci.b, 0x88cda015, 0x88cda074, 0x015 )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.min.sci.b, 0xf0f0dcf0, 0x0025dc6c, 0xfffffff0 )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.min.sci.b, 0x09090909, 0x7316557d, 0x009 )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.min.sci.b, 0xefefcfbe, 0x0b72cfbe, 0xffffffef )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.min.sci.b, 0x1c8ba9b0, 0x728ba9b0, 0x01c )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.min.sci.b, 0x03fd03a0, 0x37fd43a0, 0x003 )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.min.sci.b, 0xe9e9e9e9, 0xffffffe9 )
  TEST_SIMM6_ZEROSRC1( 35, pv.min.sci.b, 0xfafafafa, 0xfffffffa )
  
  TEST_SIMM6_ZERODEST( 36, pv.min.sci.b, 0x43bc2c29, 0x019 )
  TEST_SIMM6_ZERODEST( 37, pv.min.sci.b, 0x1dcfc2b0, 0xffffffe3 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
