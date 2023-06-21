# See LICENSE for license details.

#*****************************************************************************
# p.mulhhsN
#-----------------------------------------------------------------------------
#
# Test p.mulhhsN instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_OP( 2, p.mulhhsN, 0, 0, 0, 0 )
  TEST_RR_UIMM5_OP( 3, p.mulhhsN, 0, 0, 0, 31 )
  TEST_RR_UIMM5_OP( 4, p.mulhhsN, 0, 0, 1, 0 )
  TEST_RR_UIMM5_OP( 5, p.mulhhsN, 0, 1, 0, 0 )
  TEST_RR_UIMM5_OP( 6, p.mulhhsN, 0, -32768, 1, 0 )
  TEST_RR_UIMM5_OP( 7, p.mulhhsN, 0, 32767, 1, 0 )
  TEST_RR_UIMM5_OP( 8, p.mulhhsN, 0, 32767, 32767, 31 )
  TEST_RR_UIMM5_OP( 9, p.mulhhsN, 0, -32768, -32768, 31 )
  TEST_RR_UIMM5_OP( 10, p.mulhhsN, 0, 32767, 32767, 0 )
  TEST_RR_UIMM5_OP( 11, p.mulhhsN, 1, -32768, -32768, 0 )
  TEST_RR_UIMM5_OP( 12, p.mulhhsN, 0, 2147418113, 1, 0 )
  TEST_RR_UIMM5_OP( 13, p.mulhhsN, 0, 98303, 1, 0 )
  TEST_RR_UIMM5_OP( 14, p.mulhhsN, 0, 1, 2147418113, 0 )
  TEST_RR_UIMM5_OP( 15, p.mulhhsN, 0, 1, 98303, 0 )
  TEST_RR_UIMM5_OP( 16, p.mulhhsN, -48124, 1929759476, -1754842422, 14 )
  TEST_RR_UIMM5_OP( 17, p.mulhhsN, -709, 1276822284, -312334622, 17 )
  TEST_RR_UIMM5_OP( 18, p.mulhhsN, -208, -1775556431, 525794850, 20 )
  TEST_RR_UIMM5_OP( 19, p.mulhhsN, -86, 916951953, -835834901, 21 )
  TEST_RR_UIMM5_OP( 20, p.mulhhsN, -77503443, 2005336095, -1327941777, 3 )
  TEST_RR_UIMM5_OP( 21, p.mulhhsN, -330272166, -1402371194, 1011525267, 0 )
  TEST_RR_UIMM5_OP( 22, p.mulhhsN, 0, -659933275, -1352330589, 31 )
  TEST_RR_UIMM5_OP( 23, p.mulhhsN, 69, -981507712, -1278865762, 22 )
  TEST_RR_UIMM5_OP( 24, p.mulhhsN, -2, 1045955319, -1196612374, 28 )
  TEST_RR_UIMM5_OP( 25, p.mulhhsN, -2, 1981492964, -1532582113, 29 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_SRC1_EQ_DEST( 26, p.mulhhsN, 13968500, 1046232194, 917507166, 4 )
  TEST_RR_UIMM5_SRC1_EQ_DEST( 27, p.mulhhsN, 1252, -1348948106, -2090730064, 19 )
  
  TEST_RR_UIMM5_SRC2_EQ_DEST( 28, p.mulhhsN, 47, -1656824624, -2079638972, 24 )
  TEST_RR_UIMM5_SRC2_EQ_DEST( 29, p.mulhhsN, -837, 44368637, -331678287, 12 )
  
  TEST_RR_UIMM5_SRC12_EQ_DEST( 30, p.mulhhsN, 13, 1407355723, 25 )
  TEST_RR_UIMM5_SRC12_EQ_DEST( 31, p.mulhhsN, 0, 733743524, 27 )
  
  TEST_RR_UIMM5_DEST_BYPASS( 50, 0, p.mulhhsN, 3896585, -1463565685, -1463565685, 7 )
  TEST_RR_UIMM5_DEST_BYPASS( 51, 1, p.mulhhsN, 688329, 1739975300, 1739975300, 10 )
  TEST_RR_UIMM5_DEST_BYPASS( 52, 2, p.mulhhsN, 59536, -127902722, -127902722, 6 )
  TEST_RR_UIMM5_DEST_BYPASS( 53, 0, p.mulhhsN, 421573684, -1902950849, -1902950849, 1 )
  TEST_RR_UIMM5_DEST_BYPASS( 54, 1, p.mulhhsN, 11, 1306220149, 1306220149, 25 )
  TEST_RR_UIMM5_DEST_BYPASS( 55, 2, p.mulhhsN, 13836430, 689553948, 689553948, 3 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_SRC12_BYPASS( 32, 0, 0, p.mulhhsN, -12, -691823664, 1210782183, 24 )
  TEST_RR_UIMM5_SRC12_BYPASS( 33, 0, 1, p.mulhhsN, 423108, -1778596869, -1046156705, 10 )
  TEST_RR_UIMM5_SRC12_BYPASS( 34, 0, 2, p.mulhhsN, 386951, -220664069, -481852518, 6 )
  TEST_RR_UIMM5_SRC12_BYPASS( 35, 1, 0, p.mulhhsN, 6210, 617211332, 1416182543, 15 )
  TEST_RR_UIMM5_SRC12_BYPASS( 36, 1, 1, p.mulhhsN, 4574, -593558629, -271163229, 13 )
  TEST_RR_UIMM5_SRC12_BYPASS( 37, 1, 2, p.mulhhsN, 65, 1190787494, 989816049, 22 )
  TEST_RR_UIMM5_SRC12_BYPASS( 38, 2, 0, p.mulhhsN, -153, 1672772372, -819128792, 21 )
  TEST_RR_UIMM5_SRC12_BYPASS( 39, 2, 1, p.mulhhsN, -71, -1975957619, 1279573669, 23 )
  TEST_RR_UIMM5_SRC12_BYPASS( 40, 2, 2, p.mulhhsN, 0, 1932510932, 1913767043, 30 )
  TEST_RR_UIMM5_SRC12_BYPASS( 41, 0, 0, p.mulhhsN, -1, 277168730, -333548687, 25 )
  TEST_RR_UIMM5_SRC12_BYPASS( 42, 0, 1, p.mulhhsN, -1, 1210113281, -175655312, 31 )
  TEST_RR_UIMM5_SRC12_BYPASS( 43, 0, 2, p.mulhhsN, 53388065, -550232686, -1666886991, 2 )
  TEST_RR_UIMM5_SRC12_BYPASS( 44, 1, 0, p.mulhhsN, 69186600, 2116856988, 561533072, 2 )
  TEST_RR_UIMM5_SRC12_BYPASS( 45, 1, 1, p.mulhhsN, 250, -466516964, -605604754, 18 )
  TEST_RR_UIMM5_SRC12_BYPASS( 46, 1, 2, p.mulhhsN, 370142, -1221541097, -1332576664, 10 )
  TEST_RR_UIMM5_SRC12_BYPASS( 47, 2, 0, p.mulhhsN, 4278348, 79237678, 927688535, 2 )
  TEST_RR_UIMM5_SRC12_BYPASS( 48, 2, 1, p.mulhhsN, 4, -1876514384, -755727736, 26 )
  TEST_RR_UIMM5_SRC12_BYPASS( 49, 2, 2, p.mulhhsN, -463790, 1070659484, -238144933, 7 )
  
  

  TEST_RR_UIMM5_ZEROSRC1( 56, p.mulhhsN, 0, 217680701, 0 )
  TEST_RR_UIMM5_ZEROSRC1( 57, p.mulhhsN, 0, 679578306, 25 )
  
  TEST_RR_UIMM5_ZEROSRC2( 58, p.mulhhsN, 0, 61326380, 26 )
  TEST_RR_UIMM5_ZEROSRC2( 59, p.mulhhsN, 0, -650990896, 18 )
  
  TEST_RR_UIMM5_ZEROSRC12( 60, p.mulhhsN, 0, 29 )
  TEST_RR_UIMM5_ZEROSRC12( 61, p.mulhhsN, 0, 30 )
  
  TEST_RR_UIMM5_ZERODEST( 62, p.mulhhsN, 1801528928, -167644583, 14 )
  TEST_RR_UIMM5_ZERODEST( 63, p.mulhhsN, -518565991, -1586510944, 6 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
