# See LICENSE for license details.

#*****************************************************************************
# pv.cmpgeu.sc.h
#-----------------------------------------------------------------------------
#
# Test pv.cmpgeu.sc.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.cmpgeu.sc.h, 0x00000001, 0x01234567, 0x01234567 )
  TEST_RR_OP( 3, pv.cmpgeu.sc.h, 0x00000001, 0x01234567, 0x00234067 )
  TEST_RR_OP( 4, pv.cmpgeu.sc.h, 0x00000001, 0x01234567, 0x01204560 )
  TEST_RR_OP( 5, pv.cmpgeu.sc.h, 0x00010001, 0x01234567, 0x45670123 )
  TEST_RR_OP( 6, pv.cmpgeu.sc.h, 0x00000000, 0x01234567, 0x23016745 )
  TEST_RR_OP( 7, pv.cmpgeu.sc.h, 0x00000000, 0xed409ec5, 0x8c67f7de )
  TEST_RR_OP( 8, pv.cmpgeu.sc.h, 0x00000001, 0xbd97ff67, 0x847bf4fd )
  TEST_RR_OP( 9, pv.cmpgeu.sc.h, 0x00000000, 0x6a29d541, 0x2103faa5 )
  TEST_RR_OP( 10, pv.cmpgeu.sc.h, 0x00000000, 0x5d07840e, 0xee99bd5f )
  TEST_RR_OP( 11, pv.cmpgeu.sc.h, 0x00000000, 0xbc5baeb7, 0xc59aff94 )
  TEST_RR_OP( 12, pv.cmpgeu.sc.h, 0x00000000, 0xa33292dd, 0x0937aa56 )
  TEST_RR_OP( 13, pv.cmpgeu.sc.h, 0x00010001, 0xb4c4cd6f, 0x000b811d )
  TEST_RR_OP( 14, pv.cmpgeu.sc.h, 0x00010001, 0x9b1261cc, 0x9586312d )
  TEST_RR_OP( 15, pv.cmpgeu.sc.h, 0x00000001, 0x2484dc94, 0x8f5bb446 )
  TEST_RR_OP( 16, pv.cmpgeu.sc.h, 0x00000000, 0xa0e59671, 0x5d15a1a3 )
  TEST_RR_OP( 17, pv.cmpgeu.sc.h, 0x00000001, 0x4152d24f, 0x72c3cd07 )
  TEST_RR_OP( 18, pv.cmpgeu.sc.h, 0x00010001, 0xba3fb051, 0xded26409 )
  TEST_RR_OP( 19, pv.cmpgeu.sc.h, 0x00010001, 0x71571a7d, 0x29d90f67 )
  TEST_RR_OP( 20, pv.cmpgeu.sc.h, 0x00010001, 0xf14ae03f, 0x4ef27dc7 )
  TEST_RR_OP( 21, pv.cmpgeu.sc.h, 0x00010001, 0x70c13203, 0xde8916ef )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 22, pv.cmpgeu.sc.h, 0x00000000, 0x4b7da118, 0x33d2db29 )
  TEST_RR_SRC1_EQ_DEST( 23, pv.cmpgeu.sc.h, 0x00010001, 0x5f4daf93, 0x7a1e20a5 )
  
  TEST_RR_SRC2_EQ_DEST( 24, pv.cmpgeu.sc.h, 0x00000000, 0x54e838d9, 0xcc4c73b3 )
  TEST_RR_SRC2_EQ_DEST( 25, pv.cmpgeu.sc.h, 0x00000000, 0x3bf30dae, 0x374d4c1f )
  
  TEST_RR_SRC12_EQ_DEST( 26, pv.cmpgeu.sc.h, 0x00000001, 0x6ae8ecd8 )
  TEST_RR_SRC12_EQ_DEST( 27, pv.cmpgeu.sc.h, 0x00000001, 0x30657b78 )
  
  TEST_RR_DEST_BYPASS( 46, 0, pv.cmpgeu.sc.h, 0x00000001, 0x0283a239, 0x0283a239 )
  TEST_RR_DEST_BYPASS( 47, 1, pv.cmpgeu.sc.h, 0x00010001, 0xabbe1b62, 0xabbe1b62 )
  TEST_RR_DEST_BYPASS( 48, 2, pv.cmpgeu.sc.h, 0x00010001, 0xfc821251, 0xfc821251 )
  TEST_RR_DEST_BYPASS( 49, 0, pv.cmpgeu.sc.h, 0x00010001, 0xbcea171a, 0xbcea171a )
  TEST_RR_DEST_BYPASS( 50, 1, pv.cmpgeu.sc.h, 0x00010001, 0x363e2b3b, 0x363e2b3b )
  TEST_RR_DEST_BYPASS( 51, 2, pv.cmpgeu.sc.h, 0x00010001, 0x9ede1bbf, 0x9ede1bbf )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 28, 0, 0, pv.cmpgeu.sc.h, 0x00000001, 0x6db3b188, 0x90696fff )
  TEST_RR_SRC12_BYPASS( 29, 0, 1, pv.cmpgeu.sc.h, 0x00000000, 0x4a224e9e, 0x87398e67 )
  TEST_RR_SRC12_BYPASS( 30, 0, 2, pv.cmpgeu.sc.h, 0x00010001, 0xe573a239, 0x30ae8fe4 )
  TEST_RR_SRC12_BYPASS( 31, 1, 0, pv.cmpgeu.sc.h, 0x00000000, 0x65e356a2, 0xd045d37a )
  TEST_RR_SRC12_BYPASS( 32, 1, 1, pv.cmpgeu.sc.h, 0x00000000, 0x87117659, 0x3e46a106 )
  TEST_RR_SRC12_BYPASS( 33, 1, 2, pv.cmpgeu.sc.h, 0x00010000, 0xff0be49b, 0xcc8af083 )
  TEST_RR_SRC12_BYPASS( 34, 2, 0, pv.cmpgeu.sc.h, 0x00000000, 0x79775f31, 0x56aebfea )
  TEST_RR_SRC12_BYPASS( 35, 2, 1, pv.cmpgeu.sc.h, 0x00010001, 0x74967184, 0x350240b1 )
  TEST_RR_SRC12_BYPASS( 36, 2, 2, pv.cmpgeu.sc.h, 0x00010001, 0xdfcfb9fa, 0xfb5453ea )
  TEST_RR_SRC12_BYPASS( 37, 0, 0, pv.cmpgeu.sc.h, 0x00010000, 0xab894b2e, 0x83a84e92 )
  TEST_RR_SRC12_BYPASS( 38, 0, 1, pv.cmpgeu.sc.h, 0x00000000, 0x0f2b39e4, 0x9685adf5 )
  TEST_RR_SRC12_BYPASS( 39, 0, 2, pv.cmpgeu.sc.h, 0x00000001, 0x012ce62a, 0x549d439d )
  TEST_RR_SRC12_BYPASS( 40, 1, 0, pv.cmpgeu.sc.h, 0x00000000, 0x1d4f66d2, 0x41f4b452 )
  TEST_RR_SRC12_BYPASS( 41, 1, 1, pv.cmpgeu.sc.h, 0x00010000, 0xaf641199, 0x589e3d47 )
  TEST_RR_SRC12_BYPASS( 42, 1, 2, pv.cmpgeu.sc.h, 0x00000000, 0x2c968157, 0xa2b29fd0 )
  TEST_RR_SRC12_BYPASS( 43, 2, 0, pv.cmpgeu.sc.h, 0x00010001, 0x5d16ecc4, 0x428c5018 )
  TEST_RR_SRC12_BYPASS( 44, 2, 1, pv.cmpgeu.sc.h, 0x00010001, 0xf2b9a1d1, 0xfe5961c1 )
  TEST_RR_SRC12_BYPASS( 45, 2, 2, pv.cmpgeu.sc.h, 0x00000000, 0x5d07f756, 0xf4bffe31 )
  
  

  TEST_RR_ZEROSRC1( 52, pv.cmpgeu.sc.h, 0x00000000, 0x1ff13edd )
  TEST_RR_ZEROSRC1( 53, pv.cmpgeu.sc.h, 0x00000000, 0x0edbfef4 )
  
  TEST_RR_ZEROSRC2( 54, pv.cmpgeu.sc.h, 0x00010001, 0x37d36b69 )
  TEST_RR_ZEROSRC2( 55, pv.cmpgeu.sc.h, 0x00010001, 0x0d99a968 )
  
  TEST_RR_ZEROSRC12( 56, pv.cmpgeu.sc.h, 0x00010001 )
  TEST_RR_ZEROSRC12( 57, pv.cmpgeu.sc.h, 0x00010001 )
  
  TEST_RR_ZERODEST( 58, pv.cmpgeu.sc.h, 0x4a23ec73, 0xa862b493 )
  TEST_RR_ZERODEST( 59, pv.cmpgeu.sc.h, 0x84d46831, 0x9547f2fd )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
