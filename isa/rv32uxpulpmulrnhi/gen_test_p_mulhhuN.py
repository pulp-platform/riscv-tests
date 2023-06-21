import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_mulhhuN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.mulhhuN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[1] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        src1 = np.uint64(np.uint16(src1 >> 16))
        src2 = np.uint64(np.uint16(src2 >> 16))
        imm1 = np.uint64(np.uint8(imm1)) # actually uint5

        res = (src1 * src2) >> imm1
        return (np.uint32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXUINT16 = 0xFFFF
    MINUINT16 = 0x0000

    p_mulhhuN = pulp_test_p_mulhhuN()
    p_mulhhuN.file_path = os.path.join(".", p_mulhhuN.mnemonic.replace('.', '_') + ".S")

    p_mulhhuN.add_arith_test(0, 0, 0)
    p_mulhhuN.add_arith_test(0, 0, 0x1F)
    p_mulhhuN.add_arith_test(0, 1, 0)
    p_mulhhuN.add_arith_test(1, 0, 0)
    p_mulhhuN.add_arith_test(MAXUINT16, 1, 0)
    p_mulhhuN.add_arith_test(MAXUINT16, 1, 0)
    p_mulhhuN.add_arith_test(MAXUINT16, MAXUINT16, 0x1F)
    p_mulhhuN.add_arith_test(MAXUINT16, MAXUINT16, 0)
    p_mulhhuN.add_arith_test(0x7FFF0001, 1, 0)
    p_mulhhuN.add_arith_test(0x00017FFF, 1, 0)
    p_mulhhuN.add_arith_test(1, 0x7FFF0001, 0)
    p_mulhhuN.add_arith_test(1, 0x00017FFF, 0)
    p_mulhhuN.gen_arith_tests(10)

    p_mulhhuN.gen_src_dest_tests(2)
    p_mulhhuN.gen_bypass_tests(2)
    p_mulhhuN.gen_zero_reg_tests(2)
    p_mulhhuN.write_asm()
