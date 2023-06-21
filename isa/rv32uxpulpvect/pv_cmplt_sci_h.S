# See LICENSE for license details.

#*****************************************************************************
# pv.cmplt.sci.h
#-----------------------------------------------------------------------------
#
# Test pv.cmplt.sci.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_SIMM6_OP( 2, pv.cmplt.sci.h, 0x00000000, 0x01234567, 0x000 )
  TEST_SIMM6_OP( 3, pv.cmplt.sci.h, 0x00000000, 0x01234567, 0x012 )
  TEST_SIMM6_OP( 4, pv.cmplt.sci.h, 0x00000000, 0x01234567, 0x001 )
  TEST_SIMM6_OP( 5, pv.cmplt.sci.h, 0x00010000, 0xa2c10955, 0x001 )
  TEST_SIMM6_OP( 6, pv.cmplt.sci.h, 0x00000001, 0x5622c411, 0x00b )
  TEST_SIMM6_OP( 7, pv.cmplt.sci.h, 0x00000000, 0x67280aba, 0xfffffff7 )
  TEST_SIMM6_OP( 8, pv.cmplt.sci.h, 0x00010000, 0xb3940c38, 0xffffffe0 )
  TEST_SIMM6_OP( 9, pv.cmplt.sci.h, 0x00010000, 0xb9f63397, 0x005 )
  TEST_SIMM6_OP( 10, pv.cmplt.sci.h, 0x00000000, 0x3c8140e8, 0x002 )
  TEST_SIMM6_OP( 11, pv.cmplt.sci.h, 0x00000000, 0x3bb41bd2, 0xffffffe5 )
  TEST_SIMM6_OP( 12, pv.cmplt.sci.h, 0x00000000, 0x211165bd, 0x012 )
  TEST_SIMM6_OP( 13, pv.cmplt.sci.h, 0x00010001, 0xc490becd, 0x001 )
  TEST_SIMM6_OP( 14, pv.cmplt.sci.h, 0x00010000, 0xd20c3674, 0xfffffff2 )
  TEST_SIMM6_OP( 15, pv.cmplt.sci.h, 0x00010001, 0x8c728b0d, 0xffffffeb )
  TEST_SIMM6_OP( 16, pv.cmplt.sci.h, 0x00000001, 0x255cbeb7, 0xfffffff7 )
  TEST_SIMM6_OP( 17, pv.cmplt.sci.h, 0x00000001, 0x7a45b9d5, 0xffffffea )
  TEST_SIMM6_OP( 18, pv.cmplt.sci.h, 0x00000000, 0x425511c4, 0xffffffff )
  TEST_SIMM6_OP( 19, pv.cmplt.sci.h, 0x00000001, 0x0b68e255, 0x01a )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_EQ_DEST( 20, pv.cmplt.sci.h, 0x00000000, 0x72f42f25, 0xfffffff3 )
  TEST_SIMM6_SRC1_EQ_DEST( 21, pv.cmplt.sci.h, 0x00000000, 0x35857e9c, 0xffffffff )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_SIMM6_SRC1_BYPASS( 22, 0, pv.cmplt.sci.h, 0x00010001, 0xbeefe8a2, 0xfffffff5 )
  TEST_SIMM6_SRC1_BYPASS( 23, 1, pv.cmplt.sci.h, 0x00000001, 0x1ddeba5c, 0xfffffff3 )
  TEST_SIMM6_SRC1_BYPASS( 24, 2, pv.cmplt.sci.h, 0x00000000, 0x243c70d1, 0x006 )
  TEST_SIMM6_SRC1_BYPASS( 25, 0, pv.cmplt.sci.h, 0x00010001, 0xb1598208, 0x013 )
  TEST_SIMM6_SRC1_BYPASS( 26, 1, pv.cmplt.sci.h, 0x00000000, 0x35055fc4, 0x00a )
  TEST_SIMM6_SRC1_BYPASS( 27, 2, pv.cmplt.sci.h, 0x00010001, 0xdfb7cf6d, 0x010 )
  
  TEST_SIMM6_DEST_BYPASS( 28, 0, pv.cmplt.sci.h, 0x00010000, 0x9ce036cb, 0x01c )
  TEST_SIMM6_DEST_BYPASS( 29, 1, pv.cmplt.sci.h, 0x00000000, 0x4b1568f0, 0x01a )
  TEST_SIMM6_DEST_BYPASS( 30, 2, pv.cmplt.sci.h, 0x00010001, 0x836bc762, 0xfffffffe )
  TEST_SIMM6_DEST_BYPASS( 31, 0, pv.cmplt.sci.h, 0x00000001, 0x1a8ad6ac, 0xffffffea )
  TEST_SIMM6_DEST_BYPASS( 32, 1, pv.cmplt.sci.h, 0x00010000, 0xc1ce15da, 0xffffffe3 )
  TEST_SIMM6_DEST_BYPASS( 33, 2, pv.cmplt.sci.h, 0x00010001, 0x947282d4, 0x01a )
  
  

  TEST_SIMM6_ZEROSRC1( 34, pv.cmplt.sci.h, 0x00000000, 0xffffffec )
  TEST_SIMM6_ZEROSRC1( 35, pv.cmplt.sci.h, 0x00010001, 0x01b )
  
  TEST_SIMM6_ZERODEST( 36, pv.cmplt.sci.h, 0xae0dbe10, 0xffffffe5 )
  TEST_SIMM6_ZERODEST( 37, pv.cmplt.sci.h, 0x07537c77, 0xffffffff )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
