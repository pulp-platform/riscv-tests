# See LICENSE for license details.

#*****************************************************************************
# p.mulhhsRN
#-----------------------------------------------------------------------------
#
# Test p.mulhhsRN instruction.
# 
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_OP( 2, p.mulhhsRN, 0, 0, 0, 0 )
  TEST_RR_UIMM5_OP( 3, p.mulhhsRN, 0, 0, 0, 31 )
  TEST_RR_UIMM5_OP( 4, p.mulhhsRN, 0, 0, 1, 0 )
  TEST_RR_UIMM5_OP( 5, p.mulhhsRN, 0, 1, 0, 0 )
  TEST_RR_UIMM5_OP( 6, p.mulhhsRN, 0, -32768, 1, 0 )
  TEST_RR_UIMM5_OP( 7, p.mulhhsRN, 0, 32767, 1, 0 )
  TEST_RR_UIMM5_OP( 8, p.mulhhsRN, 0, 32767, 32767, 31 )
  TEST_RR_UIMM5_OP( 9, p.mulhhsRN, 0, -32768, -32768, 31 )
  TEST_RR_UIMM5_OP( 10, p.mulhhsRN, 0, 32767, 32767, 0 )
  TEST_RR_UIMM5_OP( 11, p.mulhhsRN, 1, -32768, -32768, 0 )
  TEST_RR_UIMM5_OP( 12, p.mulhhsRN, 0, 2147418113, 1, 0 )
  TEST_RR_UIMM5_OP( 13, p.mulhhsRN, 0, 98303, 1, 0 )
  TEST_RR_UIMM5_OP( 14, p.mulhhsRN, 0, 1, 2147418113, 0 )
  TEST_RR_UIMM5_OP( 15, p.mulhhsRN, 0, 1, 98303, 0 )
  TEST_RR_UIMM5_OP( 16, p.mulhhsRN, 5846, -1087942627, -1512508333, 16 )
  TEST_RR_UIMM5_OP( 17, p.mulhhsRN, 151, 1190454616, 1139198069, 21 )
  TEST_RR_UIMM5_OP( 18, p.mulhhsRN, -12, 500153912, -849141614, 23 )
  TEST_RR_UIMM5_OP( 19, p.mulhhsRN, -257, 2047879886, -282565371, 19 )
  TEST_RR_UIMM5_OP( 20, p.mulhhsRN, -1, -1447058471, 1746706116, 29 )
  TEST_RR_UIMM5_OP( 21, p.mulhhsRN, 0, 186757599, -996292572, 27 )
  TEST_RR_UIMM5_OP( 22, p.mulhhsRN, 136, 919973648, 1334932716, 21 )
  TEST_RR_UIMM5_OP( 23, p.mulhhsRN, 15, 1155569816, 1889749020, 25 )
  TEST_RR_UIMM5_OP( 24, p.mulhhsRN, 1, -1243612030, -625403819, 27 )
  TEST_RR_UIMM5_OP( 25, p.mulhhsRN, 40459967, -1956680053, -1420894591, 4 )
  

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_SRC1_EQ_DEST( 26, p.mulhhsRN, -3307400, -1713002591, 2122872947, 8 )
  TEST_RR_UIMM5_SRC1_EQ_DEST( 27, p.mulhhsRN, 0, 278398319, 1449123630, 28 )
  
  TEST_RR_UIMM5_SRC2_EQ_DEST( 28, p.mulhhsRN, 65, -150836218, -971511731, 19 )
  TEST_RR_UIMM5_SRC2_EQ_DEST( 29, p.mulhhsRN, -12330, 1194787418, -726182369, 14 )
  
  TEST_RR_UIMM5_SRC12_EQ_DEST( 30, p.mulhhsRN, 9961, -837184810, 14 )
  TEST_RR_UIMM5_SRC12_EQ_DEST( 31, p.mulhhsRN, 0, 148053450, 27 )
  
  TEST_RR_UIMM5_DEST_BYPASS( 50, 0, p.mulhhsRN, 404634, 1886634055, 1886634055, 11 )
  TEST_RR_UIMM5_DEST_BYPASS( 51, 1, p.mulhhsRN, 2023, 266848826, 266848826, 13 )
  TEST_RR_UIMM5_DEST_BYPASS( 52, 2, p.mulhhsRN, 19878222, -584324919, -584324919, 2 )
  TEST_RR_UIMM5_DEST_BYPASS( 53, 0, p.mulhhsRN, 478129, -1450113851, -1450113851, 10 )
  TEST_RR_UIMM5_DEST_BYPASS( 54, 1, p.mulhhsRN, 466376341, 2001589450, 2001589450, 1 )
  TEST_RR_UIMM5_DEST_BYPASS( 55, 2, p.mulhhsRN, 194, -1322532487, -1322532487, 21 )
  

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------
  TEST_RR_UIMM5_SRC12_BYPASS( 32, 0, 0, p.mulhhsRN, -250, 1191461594, -236363424, 18 )
  TEST_RR_UIMM5_SRC12_BYPASS( 33, 0, 1, p.mulhhsRN, 622622826, 1725639631, 1549675964, 0 )
  TEST_RR_UIMM5_SRC12_BYPASS( 34, 0, 2, p.mulhhsRN, 238466, -2002594181, -523686920, 10 )
  TEST_RR_UIMM5_SRC12_BYPASS( 35, 1, 0, p.mulhhsRN, -1293327, 509029974, -698407826, 6 )
  TEST_RR_UIMM5_SRC12_BYPASS( 36, 1, 1, p.mulhhsRN, -1, -237702959, 1779548794, 26 )
  TEST_RR_UIMM5_SRC12_BYPASS( 37, 1, 2, p.mulhhsRN, -1284, 734421261, -1968768323, 18 )
  TEST_RR_UIMM5_SRC12_BYPASS( 38, 2, 0, p.mulhhsRN, 32937590, -683339714, -1656100270, 3 )
  TEST_RR_UIMM5_SRC12_BYPASS( 39, 2, 1, p.mulhhsRN, 0, 325950959, -1397745671, 31 )
  TEST_RR_UIMM5_SRC12_BYPASS( 40, 2, 2, p.mulhhsRN, 44457, -860245338, -227261119, 10 )
  TEST_RR_UIMM5_SRC12_BYPASS( 41, 0, 0, p.mulhhsRN, 156174, -188235224, -227988565, 6 )
  TEST_RR_UIMM5_SRC12_BYPASS( 42, 0, 1, p.mulhhsRN, 3, 1668852762, 1136273706, 27 )
  TEST_RR_UIMM5_SRC12_BYPASS( 43, 0, 2, p.mulhhsRN, -3117668, 1929252237, -888405067, 7 )
  TEST_RR_UIMM5_SRC12_BYPASS( 44, 1, 0, p.mulhhsRN, 21, -328840651, -290650004, 20 )
  TEST_RR_UIMM5_SRC12_BYPASS( 45, 1, 1, p.mulhhsRN, 0, 1105752792, -478998035, 30 )
  TEST_RR_UIMM5_SRC12_BYPASS( 46, 1, 2, p.mulhhsRN, -704, -1022041625, 776012079, 18 )
  TEST_RR_UIMM5_SRC12_BYPASS( 47, 2, 0, p.mulhhsRN, -3401835, -865268817, 1080744208, 6 )
  TEST_RR_UIMM5_SRC12_BYPASS( 48, 2, 1, p.mulhhsRN, -12, 1381651406, -638614281, 24 )
  TEST_RR_UIMM5_SRC12_BYPASS( 49, 2, 2, p.mulhhsRN, -2586982, 1386538543, -256378460, 5 )
  
  

  TEST_RR_UIMM5_ZEROSRC1( 56, p.mulhhsRN, 0, -39861415, 25 )
  TEST_RR_UIMM5_ZEROSRC1( 57, p.mulhhsRN, 0, -880038721, 16 )
  
  TEST_RR_UIMM5_ZEROSRC2( 58, p.mulhhsRN, 0, 210833407, 27 )
  TEST_RR_UIMM5_ZEROSRC2( 59, p.mulhhsRN, 0, -1372881790, 11 )
  
  TEST_RR_UIMM5_ZEROSRC12( 60, p.mulhhsRN, 0, 11 )
  TEST_RR_UIMM5_ZEROSRC12( 61, p.mulhhsRN, 0, 7 )
  
  TEST_RR_UIMM5_ZERODEST( 62, p.mulhhsRN, 1585648177, -89834110, 18 )
  TEST_RR_UIMM5_ZERODEST( 63, p.mulhhsRN, 1300336532, 1415610730, 1 )
  
  

  TEST_PASSFAIL

# Input data section.
RVTEST_CODE_END

  .data

# Output data section.
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
