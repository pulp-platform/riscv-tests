# See LICENSE for license details.

#*****************************************************************************
# pv.packlo.b
#-----------------------------------------------------------------------------
#
# Test pv.packlo.b instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RRR_OP( 2, pv.packlo.b, 0x1f2e11ff, 0x44332211, 0xccddeeff, 0x1f2e3d4c )
  TEST_RRR_OP( 3, pv.packlo.b, 0x90d6c825, 0xcf80f7c8, 0xc45df725, 0x90d63d4a )
  TEST_RRR_OP( 4, pv.packlo.b, 0x09b81b38, 0xb1ae661b, 0x2a02ec38, 0x09b851e4 )
  TEST_RRR_OP( 5, pv.packlo.b, 0x93ffc8bd, 0xc1dda7c8, 0x4057ebbd, 0x93ffc379 )
  TEST_RRR_OP( 6, pv.packlo.b, 0xd510eac2, 0x7c60c4ea, 0x298cdbc2, 0xd510fd55 )
  TEST_RRR_OP( 7, pv.packlo.b, 0x2bf264b3, 0xc5b9a764, 0x548633b3, 0x2bf28289 )
  TEST_RRR_OP( 8, pv.packlo.b, 0xddb3793e, 0xabf34079, 0x3e12303e, 0xddb35a16 )
  TEST_RRR_OP( 9, pv.packlo.b, 0x2ca74624, 0x9b211d46, 0x3b3c6224, 0x2ca751e5 )
  TEST_RRR_OP( 10, pv.packlo.b, 0xa85e14e1, 0xd196af14, 0x098cb3e1, 0xa85eac1e )
  TEST_RRR_OP( 11, pv.packlo.b, 0xc695833b, 0xa0cc2783, 0x3e5c2e3b, 0xc6958d0c )
  TEST_RRR_OP( 12, pv.packlo.b, 0xb5ef2c88, 0x0a0fce2c, 0xd49e1488, 0xb5ef5845 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RRR_SRC1_EQ_DEST( 13, pv.packlo.b, 0x36d3182b, 0x36d33318, 0x44c3c42b )
  TEST_RRR_SRC1_EQ_DEST( 14, pv.packlo.b, 0x62aaa881, 0x62aa77a8, 0x72f68d81 )
  
  TEST_RRR_SRC2_EQ_DEST( 15, pv.packlo.b, 0x821851d1, 0x6e5d5f51, 0x821886d1 )
  TEST_RRR_SRC2_EQ_DEST( 16, pv.packlo.b, 0xd3471f13, 0xc3f2891f, 0xd3472e13 )
  
  TEST_RRR_SRC12_EQ_DEST( 17, pv.packlo.b, 0x79c54747, 0x79c5bd47 )
  TEST_RRR_SRC12_EQ_DEST( 18, pv.packlo.b, 0xcad22b2b, 0xcad2d92b )
  
  TEST_RRR_DEST_BYPASS( 37, 0, pv.packlo.b, 0x85f8e37a, 0x278431e3, 0x7504ec7a, 0x85f8ca74 )
  TEST_RRR_DEST_BYPASS( 38, 1, pv.packlo.b, 0xc70e9dff, 0xe644a59d, 0x05ab60ff, 0xc70e3197 )
  TEST_RRR_DEST_BYPASS( 39, 2, pv.packlo.b, 0x5927d9cd, 0x5e7e23d9, 0x8732b0cd, 0x5927a395 )
  TEST_RRR_DEST_BYPASS( 40, 0, pv.packlo.b, 0x71e2ae71, 0xbe00e5ae, 0x78d09e71, 0x71e2ad92 )
  TEST_RRR_DEST_BYPASS( 41, 1, pv.packlo.b, 0x02e37e27, 0x5cca5c7e, 0x6e9d5327, 0x02e32a61 )
  TEST_RRR_DEST_BYPASS( 42, 2, pv.packlo.b, 0x5d4fc015, 0xb21badc0, 0x296e8515, 0x5d4fb87d )
  TEST_RRR_SRC3_BYPASS( 43, 0, pv.packlo.b, 0x224528bb, 0xfba38e28, 0xa38c89bb, 0x2245ac22 )
  TEST_RRR_SRC3_BYPASS( 44, 1, pv.packlo.b, 0x69cf1d8a, 0xd33fbe1d, 0x9b81be8a, 0x69cff2c6 )
  TEST_RRR_SRC3_BYPASS( 45, 2, pv.packlo.b, 0xe162d10d, 0xaa33d3d1, 0x7cb6420d, 0xe1629fb4 )
  TEST_RRR_SRC3_BYPASS( 46, 0, pv.packlo.b, 0x99cc6eb0, 0xf60ea46e, 0x15e197b0, 0x99ccf974 )
  TEST_RRR_SRC3_BYPASS( 47, 1, pv.packlo.b, 0x2cc10f4c, 0xbccbed0f, 0x669ebd4c, 0x2cc1f5b6 )
  TEST_RRR_SRC3_BYPASS( 48, 2, pv.packlo.b, 0x9a2aa77b, 0xfbd0a9a7, 0x7151397b, 0x9a2a8d1f )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RRR_SRC12_BYPASS( 19, 0, 0, pv.packlo.b, 0x528f9a09, 0xd07e349a, 0x8ab4e009, 0x528f1256 )
  TEST_RRR_SRC12_BYPASS( 20, 0, 1, pv.packlo.b, 0xcf6b384b, 0x374b5e38, 0xfe620c4b, 0xcf6ba05e )
  TEST_RRR_SRC12_BYPASS( 21, 0, 2, pv.packlo.b, 0x61ca8bd6, 0xdd2da88b, 0xd30f4cd6, 0x61cae31b )
  TEST_RRR_SRC12_BYPASS( 22, 1, 0, pv.packlo.b, 0x3d58d5df, 0xcf74e9d5, 0x1c3823df, 0x3d58fa8a )
  TEST_RRR_SRC12_BYPASS( 23, 1, 1, pv.packlo.b, 0xa75c16e3, 0xb0fc9716, 0xbdb3d9e3, 0xa75c0de8 )
  TEST_RRR_SRC12_BYPASS( 24, 1, 2, pv.packlo.b, 0xed4eb1bc, 0x25013cb1, 0x92780dbc, 0xed4e09f9 )
  TEST_RRR_SRC12_BYPASS( 25, 2, 0, pv.packlo.b, 0xb9fb2ec7, 0xc182e32e, 0x58d620c7, 0xb9fb0190 )
  TEST_RRR_SRC12_BYPASS( 26, 2, 1, pv.packlo.b, 0xe411a58f, 0x51e273a5, 0xc77ef28f, 0xe4115c1a )
  TEST_RRR_SRC12_BYPASS( 27, 2, 2, pv.packlo.b, 0xfeb5424f, 0xc3501942, 0x6e98b74f, 0xfeb56b3d )
  TEST_RRR_SRC12_BYPASS( 28, 0, 0, pv.packlo.b, 0x6863ecde, 0x3ad4c7ec, 0x7448c4de, 0x6863eab3 )
  TEST_RRR_SRC12_BYPASS( 29, 0, 1, pv.packlo.b, 0xda2cb453, 0x12c301b4, 0x19e1ff53, 0xda2c9905 )
  TEST_RRR_SRC12_BYPASS( 30, 0, 2, pv.packlo.b, 0x922518ad, 0x2fd25918, 0xbfe679ad, 0x9225d7c5 )
  TEST_RRR_SRC12_BYPASS( 31, 1, 0, pv.packlo.b, 0x0e5a8491, 0x15c8c584, 0xac405c91, 0x0e5a7f61 )
  TEST_RRR_SRC12_BYPASS( 32, 1, 1, pv.packlo.b, 0x8d45ecf5, 0x91748aec, 0x8e87fff5, 0x8d45bba2 )
  TEST_RRR_SRC12_BYPASS( 33, 1, 2, pv.packlo.b, 0x1c3cee35, 0x75f2c4ee, 0xe58ba135, 0x1c3ccbd6 )
  TEST_RRR_SRC12_BYPASS( 34, 2, 0, pv.packlo.b, 0xab401c1b, 0xbbfe941c, 0xbd79d21b, 0xab400574 )
  TEST_RRR_SRC12_BYPASS( 35, 2, 1, pv.packlo.b, 0x1c9426ce, 0x6d374026, 0x6434e8ce, 0x1c945884 )
  TEST_RRR_SRC12_BYPASS( 36, 2, 2, pv.packlo.b, 0xe02ebdf4, 0xe34fe1bd, 0x0419ecf4, 0xe02e1f57 )
  
  

  TEST_RRR_ZEROSRC1( 49, pv.packlo.b, 0xb785000f, 0x98090f0f, 0xb785eb8f )
  TEST_RRR_ZEROSRC1( 50, pv.packlo.b, 0x10ec0026, 0xbd8a4826, 0x10eca51d )
  
  TEST_RRR_ZEROSRC2( 51, pv.packlo.b, 0xe3d05300, 0x53ab7553, 0xe3d01469 )
  TEST_RRR_ZEROSRC2( 52, pv.packlo.b, 0x3043a900, 0x2124c2a9, 0x30437162 )
  
  TEST_RRR_ZEROSRC3( 53, pv.packlo.b, 0x00005038, 0xc55a8750, 0x65f87938 )
  TEST_RRR_ZEROSRC3( 54, pv.packlo.b, 0x0000352e, 0x86efb235, 0xdc1e432e )
  
  TEST_RRR_ZEROSRC12( 55, pv.packlo.b, 0x8acf0000, 0x8acff898 )
  TEST_RRR_ZEROSRC12( 56, pv.packlo.b, 0x838f0000, 0x838f13d3 )
  
  TEST_RRR_ZEROSRC123( 57, pv.packlo.b, 0x00000000 )
  TEST_RRR_ZEROSRC123( 58, pv.packlo.b, 0x00000000 )
  
  TEST_RRR_ZERODEST( 59, pv.packlo.b, 0x2430562f, 0xf6fbd612 )
  TEST_RRR_ZERODEST( 60, pv.packlo.b, 0xb385a23f, 0x7ffc4f53 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
