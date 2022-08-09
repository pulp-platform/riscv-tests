import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_p_subNr(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("p.subNr", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", src3_format="{:d}")
        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = ( 0x00000000,  0xFFFFFFFF) # uint32
        self.minmax[2] = (-0x80000000, +0x7FFFFFFF) # int32
        
    def operation(self, src1: int, src2: int, src3: int) -> int:
        term1 = np.int64(np.int32(src3))     # rd
        term2 = np.int64(np.int32(src1))     # rs1
        norm = np.int64(np.uint8(src2%0x20)) # rs2[4:0]

        res = (term1 - term2) >> norm
        return (np.int32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT32 =  0x7FFFFFFF
    MININT32 = -0x80000000

    p_subNr = pulp_test_p_subNr()
    p_subNr.file_path = os.path.join(".", p_subNr.mnemonic.replace('.', '_') + ".S")

    p_subNr.add_arith_test(0, 0, 0)
    p_subNr.add_arith_test(0, 0x1F, 0)
    p_subNr.add_arith_test(0, 0, 1)
    p_subNr.add_arith_test(1, 0, 0)
    p_subNr.add_arith_test(MAXINT32, 0, 1)
    p_subNr.add_arith_test(MININT32, 0, 1)
    p_subNr.add_arith_test(1, 0, MAXINT32)
    p_subNr.add_arith_test(1, 0, MININT32)
    p_subNr.add_arith_test(MAXINT32, 0x1F, MAXINT32)
    p_subNr.add_arith_test(MININT32, 0x1F, MININT32)
    p_subNr.add_arith_test(MAXINT32, 0, MININT32)
    p_subNr.add_arith_test(MININT32, 0, MAXINT32)
    p_subNr.gen_arith_tests(10)

    p_subNr.gen_src_dest_tests(2)
    p_subNr.gen_bypass_tests(2)
    p_subNr.gen_zero_reg_tests(2)
    p_subNr.write_asm()
