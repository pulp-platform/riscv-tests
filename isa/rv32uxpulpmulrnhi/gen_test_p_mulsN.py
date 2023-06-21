import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_mulsN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.mulsN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        src1 = np.int64(np.int16(src1))
        src2 = np.int64(np.int16(src2))
        imm1 = np.int64(np.uint8(imm1)) # actually uint5

        res = (src1 * src2) >> imm1
        return (np.int32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT16 = 0x00007FFF
    MININT16 = -0x00008000

    p_mulsN = pulp_test_p_mulsN()
    p_mulsN.file_path = os.path.join(".", p_mulsN.mnemonic.replace('.', '_') + ".S")

    p_mulsN.add_arith_test(0, 0, 0)
    p_mulsN.add_arith_test(0, 0, 0x1F)
    p_mulsN.add_arith_test(0, 1, 0)
    p_mulsN.add_arith_test(1, 0, 0)
    p_mulsN.add_arith_test(MININT16, 1, 0)
    p_mulsN.add_arith_test(MAXINT16, 1, 0)
    p_mulsN.add_arith_test(MAXINT16, MAXINT16, 0x1F)
    p_mulsN.add_arith_test(MININT16, MININT16, 0x1F)
    p_mulsN.add_arith_test(MAXINT16, MAXINT16, 0)
    p_mulsN.add_arith_test(MININT16, MININT16, 0)
    p_mulsN.add_arith_test(0x7FFF0001, 1, 0)
    p_mulsN.add_arith_test(0x00017FFF, 1, 0)
    p_mulsN.add_arith_test(1, 0x7FFF0001, 0)
    p_mulsN.add_arith_test(1, 0x00017FFF, 0)
    p_mulsN.gen_arith_tests(10)

    p_mulsN.gen_src_dest_tests(2)
    p_mulsN.gen_bypass_tests(2)
    p_mulsN.gen_zero_reg_tests(2)
    p_mulsN.write_asm()
