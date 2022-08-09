import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_subRN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.subRN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        term1 = np.int64(np.int32(src1))
        term2 = np.int64(np.int32(src2))
        norm = np.int64(np.uint8(imm1)) # actually uint5
        
        if norm > 0:
            halfbit = np.int64(2**(norm-1))
        else:
            halfbit = np.int64(0)
            
        res = ((term1 - term2) + halfbit) >> norm
        return (np.int32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT32 =  0x7FFFFFFF
    MININT32 = -0x80000000

    p_subRN = pulp_test_p_subRN()
    p_subRN.file_path = os.path.join(".", p_subRN.mnemonic.replace('.', '_') + ".S")

    p_subRN.add_arith_test(0, 0, 0)
    p_subRN.add_arith_test(0, 0, 0x1F)
    p_subRN.add_arith_test(0, 1, 0)
    p_subRN.add_arith_test(1, 0, 0)
    p_subRN.add_arith_test(MAXINT32, 1, 0)
    p_subRN.add_arith_test(MININT32, 1, 0)
    p_subRN.add_arith_test(1, MAXINT32, 0)
    p_subRN.add_arith_test(1, MININT32, 0)
    p_subRN.add_arith_test(MAXINT32, MAXINT32, 0x1F)
    p_subRN.add_arith_test(MININT32, MININT32, 0x1F)
    p_subRN.add_arith_test(MAXINT32, MININT32, 0)
    p_subRN.add_arith_test(MININT32, MAXINT32, 0)
    p_subRN.gen_arith_tests(10)

    p_subRN.gen_src_dest_tests(2)
    p_subRN.gen_bypass_tests(2)
    p_subRN.gen_zero_reg_tests(2)
    p_subRN.write_asm()
