import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_muluRN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.muluRN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[1] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        src1 = np.uint64(np.uint16(src1))
        src2 = np.uint64(np.uint16(src2))
        imm1 = np.uint64(np.uint8(imm1)) # actually uint5

        if imm1 > 0:
            halfbit = np.uint64(2**(imm1-1))
        else:
            halfbit = np.uint64(0)
            
        res = ((src1 * src2) + halfbit) >> imm1
        return (np.uint32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXUINT16 = 0xFFFF
    MINUINT16 = 0x0000

    p_muluRN = pulp_test_p_muluRN()
    p_muluRN.file_path = os.path.join(".", p_muluRN.mnemonic.replace('.', '_') + ".S")

    p_muluRN.add_arith_test(0, 0, 0)
    p_muluRN.add_arith_test(0, 0, 0x1F)
    p_muluRN.add_arith_test(0, 1, 0)
    p_muluRN.add_arith_test(1, 0, 0)
    p_muluRN.add_arith_test(MAXUINT16, 1, 0)
    p_muluRN.add_arith_test(MAXUINT16, 1, 0)
    p_muluRN.add_arith_test(MAXUINT16, MAXUINT16, 0x1F)
    p_muluRN.add_arith_test(MAXUINT16, MAXUINT16, 0)
    p_muluRN.add_arith_test(0x7FFF0001, 1, 0)
    p_muluRN.add_arith_test(0x00017FFF, 1, 0)
    p_muluRN.add_arith_test(1, 0x7FFF0001, 0)
    p_muluRN.add_arith_test(1, 0x00017FFF, 0)
    p_muluRN.gen_arith_tests(10)

    p_muluRN.gen_src_dest_tests(2)
    p_muluRN.gen_bypass_tests(2)
    p_muluRN.gen_zero_reg_tests(2)
    p_muluRN.write_asm()
