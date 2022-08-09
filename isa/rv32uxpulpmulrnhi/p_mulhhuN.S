# See LICENSE for license details.

#*****************************************************************************
# p.mulhhuN
#-----------------------------------------------------------------------------
#
# Test p.mulhhuN instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_OP( 2, p.mulhhuN, 0, 0, 0, 0 )
  TEST_RR_UIMM5_OP( 3, p.mulhhuN, 0, 0, 0, 31 )
  TEST_RR_UIMM5_OP( 4, p.mulhhuN, 0, 0, 1, 0 )
  TEST_RR_UIMM5_OP( 5, p.mulhhuN, 0, 1, 0, 0 )
  TEST_RR_UIMM5_OP( 6, p.mulhhuN, 0, 65535, 1, 0 )
  TEST_RR_UIMM5_OP( 7, p.mulhhuN, 0, 65535, 1, 0 )
  TEST_RR_UIMM5_OP( 8, p.mulhhuN, 0, 65535, 65535, 31 )
  TEST_RR_UIMM5_OP( 9, p.mulhhuN, 0, 65535, 65535, 0 )
  TEST_RR_UIMM5_OP( 10, p.mulhhuN, 0, 2147418113, 1, 0 )
  TEST_RR_UIMM5_OP( 11, p.mulhhuN, 0, 98303, 1, 0 )
  TEST_RR_UIMM5_OP( 12, p.mulhhuN, 0, 1, 2147418113, 0 )
  TEST_RR_UIMM5_OP( 13, p.mulhhuN, 0, 1, 98303, 0 )
  TEST_RR_UIMM5_OP( 14, p.mulhhuN, 60092460, 2085794439, 3959774565, 5 )
  TEST_RR_UIMM5_OP( 15, p.mulhhuN, 56, 3305017104, 2476758207, 25 )
  TEST_RR_UIMM5_OP( 16, p.mulhhuN, 74485582, 3809537491, 2687339223, 5 )
  TEST_RR_UIMM5_OP( 17, p.mulhhuN, 96527, 3561156948, 1907484605, 14 )
  TEST_RR_UIMM5_OP( 18, p.mulhhuN, 4509, 78172273, 4062255772, 14 )
  TEST_RR_UIMM5_OP( 19, p.mulhhuN, 2, 1967551328, 1737809845, 28 )
  TEST_RR_UIMM5_OP( 20, p.mulhhuN, 842, 2936158227, 1292862532, 20 )
  TEST_RR_UIMM5_OP( 21, p.mulhhuN, 4864, 1128618697, 2426578401, 17 )
  TEST_RR_UIMM5_OP( 22, p.mulhhuN, 644743, 2157634869, 1314297749, 10 )
  TEST_RR_UIMM5_OP( 23, p.mulhhuN, 2632003, 1836390256, 787953300, 7 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_SRC1_EQ_DEST( 24, p.mulhhuN, 113327214, 3746764292, 1039305686, 3 )
  TEST_RR_UIMM5_SRC1_EQ_DEST( 25, p.mulhhuN, 23998, 3601474444, 3751253336, 17 )
  
  TEST_RR_UIMM5_SRC2_EQ_DEST( 26, p.mulhhuN, 7670592, 4289200112, 491588880, 6 )
  TEST_RR_UIMM5_SRC2_EQ_DEST( 27, p.mulhhuN, 359314, 1245882011, 1268462594, 10 )
  
  TEST_RR_UIMM5_SRC12_EQ_DEST( 28, p.mulhhuN, 1, 2218385211, 30 )
  TEST_RR_UIMM5_SRC12_EQ_DEST( 29, p.mulhhuN, 1, 2641474236, 30 )
  
  TEST_RR_UIMM5_DEST_BYPASS( 48, 0, p.mulhhuN, 13031, 2708561161, 2708561161, 17 )
  TEST_RR_UIMM5_DEST_BYPASS( 49, 1, p.mulhhuN, 197592220, 3684942354, 3684942354, 4 )
  TEST_RR_UIMM5_DEST_BYPASS( 50, 2, p.mulhhuN, 0, 31759062, 31759062, 23 )
  TEST_RR_UIMM5_DEST_BYPASS( 51, 0, p.mulhhuN, 68, 2214598933, 2214598933, 24 )
  TEST_RR_UIMM5_DEST_BYPASS( 52, 1, p.mulhhuN, 3, 1983271036, 1983271036, 28 )
  TEST_RR_UIMM5_DEST_BYPASS( 53, 2, p.mulhhuN, 21, 3496062847, 3496062847, 27 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_SRC12_BYPASS( 30, 0, 0, p.mulhhuN, 1084204, 56152962, 2656250418, 5 )
  TEST_RR_UIMM5_SRC12_BYPASS( 31, 0, 1, p.mulhhuN, 907807, 2119802876, 1883534019, 10 )
  TEST_RR_UIMM5_SRC12_BYPASS( 32, 0, 2, p.mulhhuN, 1253619, 700516039, 1967699641, 8 )
  TEST_RR_UIMM5_SRC12_BYPASS( 33, 1, 0, p.mulhhuN, 44069, 1467630451, 2113052064, 14 )
  TEST_RR_UIMM5_SRC12_BYPASS( 34, 1, 1, p.mulhhuN, 1338, 3105106311, 1941664480, 20 )
  TEST_RR_UIMM5_SRC12_BYPASS( 35, 1, 2, p.mulhhuN, 8, 4274721518, 300850733, 25 )
  TEST_RR_UIMM5_SRC12_BYPASS( 36, 2, 0, p.mulhhuN, 1212405480, 1686946885, 3086903036, 0 )
  TEST_RR_UIMM5_SRC12_BYPASS( 37, 2, 1, p.mulhhuN, 362049, 4222948309, 754123235, 11 )
  TEST_RR_UIMM5_SRC12_BYPASS( 38, 2, 2, p.mulhhuN, 0, 1148967030, 3950738234, 30 )
  TEST_RR_UIMM5_SRC12_BYPASS( 39, 0, 0, p.mulhhuN, 53, 1104330136, 3467604995, 24 )
  TEST_RR_UIMM5_SRC12_BYPASS( 40, 0, 1, p.mulhhuN, 4075, 2929520362, 3132834003, 19 )
  TEST_RR_UIMM5_SRC12_BYPASS( 41, 0, 2, p.mulhhuN, 129191027, 3152835287, 2815948483, 4 )
  TEST_RR_UIMM5_SRC12_BYPASS( 42, 1, 0, p.mulhhuN, 187835, 1449112509, 1140233362, 11 )
  TEST_RR_UIMM5_SRC12_BYPASS( 43, 1, 1, p.mulhhuN, 2061, 258735987, 1121572159, 15 )
  TEST_RR_UIMM5_SRC12_BYPASS( 44, 1, 2, p.mulhhuN, 8, 393201727, 2962225629, 25 )
  TEST_RR_UIMM5_SRC12_BYPASS( 45, 2, 0, p.mulhhuN, 6651941, 2520181019, 2902241716, 8 )
  TEST_RR_UIMM5_SRC12_BYPASS( 46, 2, 1, p.mulhhuN, 4, 3636066115, 2649483302, 29 )
  TEST_RR_UIMM5_SRC12_BYPASS( 47, 2, 2, p.mulhhuN, 10, 2396601767, 158610139, 23 )
  
  

  TEST_RR_UIMM5_ZEROSRC1( 54, p.mulhhuN, 0, 4012068486, 30 )
  TEST_RR_UIMM5_ZEROSRC1( 55, p.mulhhuN, 0, 4191639375, 14 )
  
  TEST_RR_UIMM5_ZEROSRC2( 56, p.mulhhuN, 0, 2658774560, 22 )
  TEST_RR_UIMM5_ZEROSRC2( 57, p.mulhhuN, 0, 2226976639, 6 )
  
  TEST_RR_UIMM5_ZEROSRC12( 58, p.mulhhuN, 0, 14 )
  TEST_RR_UIMM5_ZEROSRC12( 59, p.mulhhuN, 0, 16 )
  
  TEST_RR_UIMM5_ZERODEST( 60, p.mulhhuN, 1544831908, 4247026603, 1 )
  TEST_RR_UIMM5_ZERODEST( 61, p.mulhhuN, 2671240893, 949538684, 18 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
