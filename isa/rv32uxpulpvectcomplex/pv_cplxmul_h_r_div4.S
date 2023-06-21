# See LICENSE for license details.

#*****************************************************************************
# pv.cplxmul.h.r.div4
#-----------------------------------------------------------------------------
#
# Test pv.cplxmul.h.r.div4 instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.cplxmul.h.r.div4, 0x1234091c, 0x55667788, 0x11223344, 0x12345678 )
  TEST_RRR_OP( 3, pv.cplxmul.h.r.div4, 0x1234091c, 0x11223344, 0x55667788, 0x12345678 )
  TEST_RRR_OP( 4, pv.cplxmul.h.r.div4, 0x12340000, 0x7fff8000, 0x80007fff, 0x12345678 )
  TEST_RRR_OP( 5, pv.cplxmul.h.r.div4, 0xe26af01e, 0xbe64dd63, 0xbefb6fb0, 0xe26a62aa )
  TEST_RRR_OP( 6, pv.cplxmul.h.r.div4, 0x3e7102e1, 0x35fa5ce3, 0xee58059e, 0x3e71251e )
  TEST_RRR_OP( 7, pv.cplxmul.h.r.div4, 0xb95df95c, 0xc7fa043d, 0xbee53ac7, 0xb95d8131 )
  TEST_RRR_OP( 8, pv.cplxmul.h.r.div4, 0x4942f3a3, 0x2cdc5ba6, 0xe607ae3c, 0x4942fb87 )
  TEST_RRR_OP( 9, pv.cplxmul.h.r.div4, 0xb86ee4a1, 0x6dc2fbfb, 0x7d2644b9, 0xb86e89a3 )
  TEST_RRR_OP( 10, pv.cplxmul.h.r.div4, 0xfe45e701, 0x87fd1cb9, 0x84b8458e, 0xfe450998 )
  TEST_RRR_OP( 11, pv.cplxmul.h.r.div4, 0x1dec03b5, 0x3c4756b1, 0x86dac1ae, 0x1dec1f21 )
  TEST_RRR_OP( 12, pv.cplxmul.h.r.div4, 0xc40be2c6, 0x718ab316, 0x4e9d4e7e, 0xc40b9337 )
  TEST_RRR_OP( 13, pv.cplxmul.h.r.div4, 0x363e066d, 0xca6cb723, 0xd74db4e8, 0x363ead58 )
  TEST_RRR_OP( 14, pv.cplxmul.h.r.div4, 0x837e0ac4, 0x35e954fe, 0x3c51671e, 0x837e702d )
  TEST_RRR_OP( 15, pv.cplxmul.h.r.div4, 0x3003f81e, 0x2a204003, 0xf09cb6d8, 0x3003d124 )
  TEST_RRR_OP( 16, pv.cplxmul.h.r.div4, 0x20e20191, 0xd706dbfc, 0xbd579de0, 0x20e2cc11 )
  TEST_RRR_OP( 17, pv.cplxmul.h.r.div4, 0x238407e9, 0x3e6e568f, 0x62e77625, 0x2384ea88 )
  TEST_RRR_OP( 18, pv.cplxmul.h.r.div4, 0x4791fa28, 0x7bed0afe, 0x1050a7d5, 0x4791d3c9 )
  TEST_RRR_OP( 19, pv.cplxmul.h.r.div4, 0xdb10061a, 0x0de2b4bd, 0x414cca71, 0xdb1047c0 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 20, pv.cplxmul.h.r.div4, 0xe508fa23, 0xe508e2c8, 0xa16c0f6b )
  TEST_RRR_SRC1_EQ_DEST( 21, pv.cplxmul.h.r.div4, 0x256d0e7c, 0x256d3b9d, 0xea8f6ef7 )
  
  TEST_RRR_SRC2_EQ_DEST( 22, pv.cplxmul.h.r.div4, 0xac100ac6, 0x3a39d720, 0xac10f099 )
  TEST_RRR_SRC2_EQ_DEST( 23, pv.cplxmul.h.r.div4, 0x032902bc, 0x9c1e0ef4, 0x03294897 )
  
  TEST_RRR_SRC12_EQ_DEST( 24, pv.cplxmul.h.r.div4, 0x9257f07c, 0x92573fe4 )
  TEST_RRR_SRC12_EQ_DEST( 25, pv.cplxmul.h.r.div4, 0x2d0f0411, 0x2d0fbfdf )
  
  TEST_RRR_DEST_BYPASS( 44, 0, pv.cplxmul.h.r.div4, 0xd5bbe919, 0x9d472c45, 0xafd8a9eb, 0xd5bb54bf )
  TEST_RRR_DEST_BYPASS( 45, 1, pv.cplxmul.h.r.div4, 0x0ae0fe0a, 0xec230fdf, 0xd1dafa83, 0x0ae0a59e )
  TEST_RRR_DEST_BYPASS( 46, 2, pv.cplxmul.h.r.div4, 0x1711fd9c, 0xfa59f771, 0x880e3f97, 0x17110f81 )
  TEST_RRR_DEST_BYPASS( 47, 0, pv.cplxmul.h.r.div4, 0x29370ed6, 0x65a936b3, 0xa57ae2a8, 0x293731ad )
  TEST_RRR_DEST_BYPASS( 48, 1, pv.cplxmul.h.r.div4, 0xf05ff59c, 0xe7b55bba, 0x2342bcac, 0xf05fb1f7 )
  TEST_RRR_DEST_BYPASS( 49, 2, pv.cplxmul.h.r.div4, 0xd3c20e17, 0xb66dedc5, 0x5bdce6ed, 0xd3c261f1 )
  TEST_RRR_SRC3_BYPASS( 50, 0, pv.cplxmul.h.r.div4, 0xa5a8f326, 0x3da2f863, 0x6b16fd55, 0xa5a8376c )
  TEST_RRR_SRC3_BYPASS( 51, 1, pv.cplxmul.h.r.div4, 0x7895fe26, 0x60c09aa4, 0xde462988, 0x7895dda8 )
  TEST_RRR_SRC3_BYPASS( 52, 2, pv.cplxmul.h.r.div4, 0x2bddff1b, 0xcc3af8e1, 0xe8ec9872, 0x2bdd1b76 )
  TEST_RRR_SRC3_BYPASS( 53, 0, pv.cplxmul.h.r.div4, 0xb6630ddb, 0xf3664405, 0xaf5e773c, 0xb66368d2 )
  TEST_RRR_SRC3_BYPASS( 54, 1, pv.cplxmul.h.r.div4, 0xbbe200ed, 0x86398eec, 0x719b7623, 0xbbe26d10 )
  TEST_RRR_SRC3_BYPASS( 55, 2, pv.cplxmul.h.r.div4, 0xe4b9f77a, 0x64f86272, 0x712147b5, 0xe4b955e3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 26, 0, 0, pv.cplxmul.h.r.div4, 0x60440227, 0xd8fc380e, 0x99345b37, 0x60449af3 )
  TEST_RRR_SRC12_BYPASS( 27, 0, 1, pv.cplxmul.h.r.div4, 0x8957f893, 0x31dd3cb7, 0x1b5ed7df, 0x8957d342 )
  TEST_RRR_SRC12_BYPASS( 28, 0, 2, pv.cplxmul.h.r.div4, 0x67541915, 0x5b874798, 0xb0de4e36, 0x6754fa5d )
  TEST_RRR_SRC12_BYPASS( 29, 1, 0, pv.cplxmul.h.r.div4, 0x4d95f0d5, 0x594fa8cd, 0x3aa91cf9, 0x4d951d3c )
  TEST_RRR_SRC12_BYPASS( 30, 1, 1, pv.cplxmul.h.r.div4, 0xbea80a94, 0x4078d36e, 0xe897a850, 0xbea8558a )
  TEST_RRR_SRC12_BYPASS( 31, 1, 2, pv.cplxmul.h.r.div4, 0xcd10fbff, 0x1521e51e, 0xfbae4f9e, 0xcd1075e5 )
  TEST_RRR_SRC12_BYPASS( 32, 2, 0, pv.cplxmul.h.r.div4, 0x923df057, 0x93c86e9c, 0x9c021959, 0x923dbc53 )
  TEST_RRR_SRC12_BYPASS( 33, 2, 1, pv.cplxmul.h.r.div4, 0xecb4f798, 0x5f913339, 0xed858985, 0xecb49f9f )
  TEST_RRR_SRC12_BYPASS( 34, 2, 2, pv.cplxmul.h.r.div4, 0xbf14f4f7, 0x7f522529, 0x2309e000, 0xbf14e35e )
  TEST_RRR_SRC12_BYPASS( 35, 0, 0, pv.cplxmul.h.r.div4, 0xa911f01c, 0xbdd5173a, 0x8917f47a, 0xa911870c )
  TEST_RRR_SRC12_BYPASS( 36, 0, 1, pv.cplxmul.h.r.div4, 0xa54ceaab, 0x8563056c, 0xa45e3a09, 0xa54cccdd )
  TEST_RRR_SRC12_BYPASS( 37, 0, 2, pv.cplxmul.h.r.div4, 0x4bfb1e93, 0x9982a752, 0x631fc206, 0x4bfb24b6 )
  TEST_RRR_SRC12_BYPASS( 38, 1, 0, pv.cplxmul.h.r.div4, 0xcdf6f73e, 0x3446c946, 0x508e04fd, 0xcdf66e1d )
  TEST_RRR_SRC12_BYPASS( 39, 1, 1, pv.cplxmul.h.r.div4, 0xaab40c47, 0x39f9f7fb, 0x93230303, 0xaab4d6b2 )
  TEST_RRR_SRC12_BYPASS( 40, 1, 2, pv.cplxmul.h.r.div4, 0x05a51f15, 0xa8195a42, 0x43646eb0, 0x05a53d52 )
  TEST_RRR_SRC12_BYPASS( 41, 2, 0, pv.cplxmul.h.r.div4, 0x95a606f5, 0xf0f9bbd2, 0xdb09c399, 0x95a6f17f )
  TEST_RRR_SRC12_BYPASS( 42, 2, 1, pv.cplxmul.h.r.div4, 0x7b90f593, 0x8d7fa36b, 0x9764b843, 0x7b90830f )
  TEST_RRR_SRC12_BYPASS( 43, 2, 2, pv.cplxmul.h.r.div4, 0xf9be1928, 0x5c606f2e, 0x975b1ce8, 0xf9bef317 )
  
  

  TEST_RRR_ZEROSRC1( 56, pv.cplxmul.h.r.div4, 0x2cad0000, 0xca861ad6, 0x2caddaee )
  TEST_RRR_ZEROSRC1( 57, pv.cplxmul.h.r.div4, 0x29870000, 0x972c82a7, 0x2987cbc4 )
  
  TEST_RRR_ZEROSRC2( 58, pv.cplxmul.h.r.div4, 0x90fd0000, 0x1991a0f2, 0x90fdcceb )
  TEST_RRR_ZEROSRC2( 59, pv.cplxmul.h.r.div4, 0xd2850000, 0xce8eaca9, 0xd285566f )
  
  TEST_RRR_ZEROSRC3( 60, pv.cplxmul.h.r.div4, 0x0000163e, 0x88c714ac, 0x5f84000b )
  TEST_RRR_ZEROSRC3( 61, pv.cplxmul.h.r.div4, 0x0000fe19, 0xedc3c1d6, 0x9581f066 )
  
  TEST_RRR_ZEROSRC12( 62, pv.cplxmul.h.r.div4, 0x0d0a0000, 0x0d0a073e )
  TEST_RRR_ZEROSRC12( 63, pv.cplxmul.h.r.div4, 0xc8a90000, 0xc8a9c0c7 )
  
  TEST_RRR_ZEROSRC123( 64, pv.cplxmul.h.r.div4, 0x00000000 )
  TEST_RRR_ZEROSRC123( 65, pv.cplxmul.h.r.div4, 0x00000000 )
  
  TEST_RRR_ZERODEST( 66, pv.cplxmul.h.r.div4, 0x43d74885, 0x07353870 )
  TEST_RRR_ZERODEST( 67, pv.cplxmul.h.r.div4, 0xd8a9bb40, 0x37f0c971 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
