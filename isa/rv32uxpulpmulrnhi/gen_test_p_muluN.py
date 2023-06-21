import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_muluN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.muluN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[1] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        src1 = np.uint64(np.uint16(src1))
        src2 = np.uint64(np.uint16(src2))
        imm1 = np.uint64(np.uint8(imm1)) # actually uint5

        res = (src1 * src2) >> imm1
        return (np.uint32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXUINT16 = 0xFFFF
    MINUINT16 = 0x0000

    p_muluN = pulp_test_p_muluN()
    p_muluN.file_path = os.path.join(".", p_muluN.mnemonic.replace('.', '_') + ".S")

    p_muluN.add_arith_test(0, 0, 0)
    p_muluN.add_arith_test(0, 0, 0x1F)
    p_muluN.add_arith_test(0, 1, 0)
    p_muluN.add_arith_test(1, 0, 0)
    p_muluN.add_arith_test(MAXUINT16, 1, 0)
    p_muluN.add_arith_test(MAXUINT16, 1, 0)
    p_muluN.add_arith_test(MAXUINT16, MAXUINT16, 0x1F)
    p_muluN.add_arith_test(MAXUINT16, MAXUINT16, 0)
    p_muluN.add_arith_test(0x7FFF0001, 1, 0)
    p_muluN.add_arith_test(0x00017FFF, 1, 0)
    p_muluN.add_arith_test(1, 0x7FFF0001, 0)
    p_muluN.add_arith_test(1, 0x00017FFF, 0)
    p_muluN.gen_arith_tests(10)

    p_muluN.gen_src_dest_tests(2)
    p_muluN.gen_bypass_tests(2)
    p_muluN.gen_zero_reg_tests(2)
    p_muluN.write_asm()
