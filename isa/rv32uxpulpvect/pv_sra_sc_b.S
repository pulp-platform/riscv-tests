# See LICENSE for license details.

#*****************************************************************************
# pv.sra.sc.b
#-----------------------------------------------------------------------------
#
# Test pv.sra.sc.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.sra.sc.b, 0x00000000, 0x40000000, 0xaabbcdff )
  TEST_RR_OP( 3, pv.sra.sc.b, 0x80000000, 0x80000000, 0xaabbcd00 )
  TEST_RR_OP( 4, pv.sra.sc.b, 0x20000000, 0x40000000, 0xaabbcd01 )
  TEST_RR_OP( 5, pv.sra.sc.b, 0x01fa03f8, 0x13a93e81, 0x34806464 )
  TEST_RR_OP( 6, pv.sra.sc.b, 0xfa07f800, 0xa275820b, 0x54c74d8c )
  TEST_RR_OP( 7, pv.sra.sc.b, 0x66dca845, 0x66dca845, 0xfffd4c48 )
  TEST_RR_OP( 8, pv.sra.sc.b, 0xf6040ffd, 0xb4267eeb, 0x4c310973 )
  TEST_RR_OP( 9, pv.sra.sc.b, 0x01ff01fe, 0x70c26ba5, 0x613f0a1e )
  TEST_RR_OP( 10, pv.sra.sc.b, 0x01030203, 0x2f7f4b73, 0xe4db4ba5 )
  TEST_RR_OP( 11, pv.sra.sc.b, 0x99a97c36, 0x99a97c36, 0x5c1be048 )
  TEST_RR_OP( 12, pv.sra.sc.b, 0xebe10f36, 0xd7c21f6c, 0x1809e331 )
  TEST_RR_OP( 13, pv.sra.sc.b, 0x000201fc, 0x1241328c, 0xb771eacd )
  TEST_RR_OP( 14, pv.sra.sc.b, 0xff0100fe, 0xf442158a, 0xda8d9a86 )
  TEST_RR_OP( 15, pv.sra.sc.b, 0xfbef1207, 0xedbd491e, 0x5085f712 )
  TEST_RR_OP( 16, pv.sra.sc.b, 0x18db0718, 0x18db0718, 0x3335a188 )
  TEST_RR_OP( 17, pv.sra.sc.b, 0xfaf9f801, 0xa5918511, 0x17097884 )
  TEST_RR_OP( 18, pv.sra.sc.b, 0xf902f902, 0x92279921, 0xb395246c )
  TEST_RR_OP( 19, pv.sra.sc.b, 0xfdfdfc00, 0xa7a18300, 0x4415d6ad )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.sra.sc.b, 0x0102fbfc, 0x1723b0c9, 0x752b442c )
  TEST_RR_SRC1_EQ_DEST( 21, pv.sra.sc.b, 0x12ead0f9, 0x25d4a0f2, 0x04f30ea9 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.sra.sc.b, 0x06ff0007, 0x6af70077, 0x37f68c84 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.sra.sc.b, 0xff0000ff, 0xe77a16d0, 0xdab97cbf )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.sra.sc.b, 0xbbb9dbc8, 0xbbb9dbc8 )
  TEST_RR_SRC12_EQ_DEST( 25, pv.sra.sc.b, 0xf2f00e0d, 0x9282776b )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.sra.sc.b, 0xfd000005, 0xdd0c0d5c, 0xdd0c0d5c )
  TEST_RR_DEST_BYPASS( 45, 1, pv.sra.sc.b, 0xfe0df8f6, 0xf934e0da, 0xf934e0da )
  TEST_RR_DEST_BYPASS( 46, 2, pv.sra.sc.b, 0x020202fd, 0x5c5b56ad, 0x5c5b56ad )
  TEST_RR_DEST_BYPASS( 47, 0, pv.sra.sc.b, 0xfffe00fe, 0xf795309e, 0xf795309e )
  TEST_RR_DEST_BYPASS( 48, 1, pv.sra.sc.b, 0xfd030eec, 0xf60f38b2, 0xf60f38b2 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.sra.sc.b, 0x06ff0507, 0x6ff25574, 0x6ff25574 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.sra.sc.b, 0xf3f40e0a, 0x9ba37556, 0xcf6fd3a3 )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.sra.sc.b, 0xffffff00, 0xca908674, 0x6a6c75c7 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.sra.sc.b, 0x180214c5, 0x3004298a, 0xe99a55b9 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.sra.sc.b, 0xfdff02ff, 0xb0e857ef, 0xe38b51e5 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.sra.sc.b, 0xff0006f8, 0xff0c6f89, 0x7c563a84 )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.sra.sc.b, 0x01f4fa07, 0x09a5d73b, 0x37ef31ab )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.sra.sc.b, 0x1064d4a5, 0x1064d4a5, 0x00877518 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.sra.sc.b, 0x1fee0beb, 0x7cb92eaf, 0xf226db2a )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.sra.sc.b, 0x0401f805, 0x4b1f835f, 0x1eed3d5c )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.sra.sc.b, 0x91e2b77b, 0x91e2b77b, 0xe0dda250 )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.sra.sc.b, 0x519cee1c, 0x519cee1c, 0x64dd3f88 )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.sra.sc.b, 0xe035f30d, 0xc16ae61a, 0x37e38d09 )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.sra.sc.b, 0xfffc0003, 0xe594186c, 0xd7e71195 )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.sra.sc.b, 0x0000ff00, 0x431dea5a, 0x97e05bc7 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.sra.sc.b, 0x01ff0101, 0x51f26c46, 0x55d4266e )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.sra.sc.b, 0xd8def02f, 0xb0bde05f, 0x52206f61 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.sra.sc.b, 0x000102e4, 0x03040993, 0xe2c2cf62 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.sra.sc.b, 0x00fd0102, 0x05aa3052, 0x3341197d )
  
  

  TEST_RR_ZEROSRC1( 50, pv.sra.sc.b, 0x00000000, 0x98d72dfe )
  TEST_RR_ZEROSRC1( 51, pv.sra.sc.b, 0x00000000, 0xf85f3be4 )
  
  TEST_RR_ZEROSRC2( 52, pv.sra.sc.b, 0x9c68be29, 0x9c68be29 )
  TEST_RR_ZEROSRC2( 53, pv.sra.sc.b, 0x20de97da, 0x20de97da )
  
  TEST_RR_ZEROSRC12( 54, pv.sra.sc.b, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.sra.sc.b, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.sra.sc.b, 0x77cd251f, 0xc62cef3a )
  TEST_RR_ZERODEST( 57, pv.sra.sc.b, 0x488cc1ef, 0xabe5626d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
