import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_adduRN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.adduRN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[1] = (0x00000000, 0xFFFFFFFF) # uint32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        term1 = np.uint64(np.uint32(src1))
        term2 = np.uint64(np.uint32(src2))
        norm = np.uint64(np.uint8(imm1)) # actually uint5

        if norm > 0:
            halfbit = np.uint64(2**(norm-1))
        else:
            halfbit = np.uint64(0)
            
        res = ((term1 + term2) + halfbit) >> norm
        return (np.uint32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT32 = 0xFFFFFFFF
    MININT32 = 0x00000000

    p_adduRN = pulp_test_p_adduRN()
    p_adduRN.file_path = os.path.join(".", p_adduRN.mnemonic.replace('.', '_') + ".S")

    p_adduRN.add_arith_test(0, 0, 0)
    p_adduRN.add_arith_test(0, 0, 0x1F)
    p_adduRN.add_arith_test(0, 1, 0)
    p_adduRN.add_arith_test(1, 0, 0)
    p_adduRN.add_arith_test(MAXINT32, 1, 0)
    p_adduRN.add_arith_test(MININT32, 1, 0)
    p_adduRN.add_arith_test(1, MAXINT32, 0)
    p_adduRN.add_arith_test(1, MININT32, 0)
    p_adduRN.add_arith_test(MAXINT32, MAXINT32, 0x1F)
    p_adduRN.add_arith_test(MININT32, MININT32, 0x1F)
    p_adduRN.add_arith_test(MAXINT32, MININT32, 0)
    p_adduRN.add_arith_test(MININT32, MAXINT32, 0)
    p_adduRN.gen_arith_tests(10)

    p_adduRN.gen_src_dest_tests(2)
    p_adduRN.gen_bypass_tests(2)
    p_adduRN.gen_zero_reg_tests(2)
    p_adduRN.write_asm()
