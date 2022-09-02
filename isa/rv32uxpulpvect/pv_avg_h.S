# See LICENSE for license details.

#*****************************************************************************
# pv.avg.h
#-----------------------------------------------------------------------------
#
# Test pv.avg.h instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_OP( 2, pv.avg.h, 0xfd7cfb7a, 0x7f7e7d7c, 0x7b7a7978 )
  TEST_RR_OP( 3, pv.avg.h, 0x02830486, 0x80818284, 0x84858688 )
  TEST_RR_OP( 4, pv.avg.h, 0x3bbb3bbb, 0x00112233, 0x77665544 )
  TEST_RR_OP( 5, pv.avg.h, 0x3d84d2fb, 0xfe096e08, 0x7d0037ee )
  TEST_RR_OP( 6, pv.avg.h, 0xe7e5c176, 0x225a04ad, 0xad707e40 )
  TEST_RR_OP( 7, pv.avg.h, 0x02ad2d1e, 0xe81abbb0, 0x1d419e8d )
  TEST_RR_OP( 8, pv.avg.h, 0x2279ccc4, 0x72f155c7, 0xd20243c1 )
  TEST_RR_OP( 9, pv.avg.h, 0x06ffe305, 0xdd5ee8c7, 0x30a1dd44 )
  TEST_RR_OP( 10, pv.avg.h, 0xed29c8c2, 0xce00e696, 0x0c53aaee )
  TEST_RR_OP( 11, pv.avg.h, 0x227822c5, 0x81845a45, 0xc36deb45 )
  TEST_RR_OP( 12, pv.avg.h, 0x1fdc1eb0, 0x36ece334, 0x08cd5a2c )
  TEST_RR_OP( 13, pv.avg.h, 0xfc4521e0, 0xc5097e71, 0x3381c54f )
  TEST_RR_OP( 14, pv.avg.h, 0xfa61eaec, 0x5b6028da, 0x9962acfe )
  TEST_RR_OP( 15, pv.avg.h, 0x3498f157, 0xfb6c4b73, 0x6dc5973b )
  TEST_RR_OP( 16, pv.avg.h, 0x2919c564, 0x3f0833fd, 0x132b56cb )
  TEST_RR_OP( 17, pv.avg.h, 0xcb6ddbd3, 0x31fde268, 0x64ddd53e )
  TEST_RR_OP( 18, pv.avg.h, 0xca3e1f16, 0x67797677, 0x2d04c7b6 )
  TEST_RR_OP( 19, pv.avg.h, 0xea15e448, 0x13f4cc8b, 0xc036fc05 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_SRC1_EQ_DEST( 20, pv.avg.h, 0xca1f3761, 0x614edca4, 0x32f1921e )
  TEST_RR_SRC1_EQ_DEST( 21, pv.avg.h, 0x10ef2ea5, 0xc67f10e2, 0x5b5f4c68 )
  
  TEST_RR_SRC2_EQ_DEST( 22, pv.avg.h, 0xfa6c25fa, 0x18cdb48f, 0xdc0c9765 )
  TEST_RR_SRC2_EQ_DEST( 23, pv.avg.h, 0x2876ebd2, 0xe062492e, 0x708a8e76 )
  
  TEST_RR_SRC12_EQ_DEST( 24, pv.avg.h, 0xf228040c, 0xf228840c )
  TEST_RR_SRC12_EQ_DEST( 25, pv.avg.h, 0xd2d32c18, 0x52d32c18 )
  
  TEST_RR_DEST_BYPASS( 44, 0, pv.avg.h, 0x3cd7cad5, 0x3cd7cad5, 0x3cd7cad5 )
  TEST_RR_DEST_BYPASS( 45, 1, pv.avg.h, 0xc8aaf8a8, 0x48aa78a8, 0x48aa78a8 )
  TEST_RR_DEST_BYPASS( 46, 2, pv.avg.h, 0xea7b16b3, 0xea7b16b3, 0xea7b16b3 )
  TEST_RR_DEST_BYPASS( 47, 0, pv.avg.h, 0xfc6a3e84, 0xfc6a3e84, 0xfc6a3e84 )
  TEST_RR_DEST_BYPASS( 48, 1, pv.avg.h, 0xe94cd965, 0xe94cd965, 0xe94cd965 )
  TEST_RR_DEST_BYPASS( 49, 2, pv.avg.h, 0x31ff2f2d, 0x31ffaf2d, 0x31ffaf2d )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_SRC12_BYPASS( 26, 0, 0, pv.avg.h, 0x081ae355, 0xfcb1d2ac, 0x1384f3ff )
  TEST_RR_SRC12_BYPASS( 27, 0, 1, pv.avg.h, 0xf3693d8d, 0x2f53d935, 0xb77fa1e5 )
  TEST_RR_SRC12_BYPASS( 28, 0, 2, pv.avg.h, 0xfec9f3ab, 0x8fd66bc4, 0x6dbc7b93 )
  TEST_RR_SRC12_BYPASS( 29, 1, 0, pv.avg.h, 0x2f69d1ed, 0x89ad9323, 0xd52510b7 )
  TEST_RR_SRC12_BYPASS( 30, 1, 1, pv.avg.h, 0xf06020af, 0x59b1a183, 0x87109fdb )
  TEST_RR_SRC12_BYPASS( 31, 1, 2, pv.avg.h, 0xdeca3b7c, 0x44e7cf95, 0x78aea764 )
  TEST_RR_SRC12_BYPASS( 32, 2, 0, pv.avg.h, 0x1c840ab2, 0xfaa3f913, 0x3e661c51 )
  TEST_RR_SRC12_BYPASS( 33, 2, 1, pv.avg.h, 0xcdbf0689, 0x137fd4ee, 0x87ff3825 )
  TEST_RR_SRC12_BYPASS( 34, 2, 2, pv.avg.h, 0x18d1cf23, 0xaacc1be0, 0x86d78267 )
  TEST_RR_SRC12_BYPASS( 35, 0, 0, pv.avg.h, 0x1f331b50, 0xa76dbf21, 0x96f9777f )
  TEST_RR_SRC12_BYPASS( 36, 0, 1, pv.avg.h, 0xe5bcc87f, 0x43c87893, 0x87b1186b )
  TEST_RR_SRC12_BYPASS( 37, 0, 2, pv.avg.h, 0x0dcd002b, 0xa25d2ef8, 0x793ed15f )
  TEST_RR_SRC12_BYPASS( 38, 1, 0, pv.avg.h, 0xd586dd8d, 0x98720acf, 0x129ab04b )
  TEST_RR_SRC12_BYPASS( 39, 1, 1, pv.avg.h, 0x07d81b4b, 0xbffaf194, 0x4fb64503 )
  TEST_RR_SRC12_BYPASS( 40, 1, 2, pv.avg.h, 0xf0452355, 0xd9381e4f, 0x0753285b )
  TEST_RR_SRC12_BYPASS( 41, 2, 0, pv.avg.h, 0xcca6fc7a, 0x1b12ef81, 0x7e3b0973 )
  TEST_RR_SRC12_BYPASS( 42, 2, 1, pv.avg.h, 0xd19bc88d, 0x2ba16662, 0x77952ab8 )
  TEST_RR_SRC12_BYPASS( 43, 2, 2, pv.avg.h, 0xc96c136e, 0x0f45601f, 0x8394c6bd )
  
  

  TEST_RR_ZEROSRC1( 50, pv.avg.h, 0xd4440ceb, 0xa88919d6 )
  TEST_RR_ZEROSRC1( 51, pv.avg.h, 0x31b0e06d, 0x6361c0db )
  
  TEST_RR_ZEROSRC2( 52, pv.avg.h, 0xfc25f3d8, 0xf84ae7b0 )
  TEST_RR_ZEROSRC2( 53, pv.avg.h, 0xd7a2e80e, 0xaf45d01d )
  
  TEST_RR_ZEROSRC12( 54, pv.avg.h, 0x00000000 )
  TEST_RR_ZEROSRC12( 55, pv.avg.h, 0x00000000 )
  
  TEST_RR_ZERODEST( 56, pv.avg.h, 0x96c90bbd, 0x3552b7a8 )
  TEST_RR_ZERODEST( 57, pv.avg.h, 0xaafc5d80, 0x2244403d )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
