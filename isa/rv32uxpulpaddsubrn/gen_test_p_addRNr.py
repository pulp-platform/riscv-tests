import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_p_addRNr(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("p.addRNr", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", src3_format="{:d}")
        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = ( 0x00000000,  0xFFFFFFFF) # uint32
        self.minmax[2] = (-0x80000000, +0x7FFFFFFF) # int32
        
    def operation(self, src1: int, src2: int, src3: int) -> int:
        term1 = np.int64(np.int32(src3))     # rd
        term2 = np.int64(np.int32(src1))     # rs1
        norm = np.int64(np.uint8(src2%0x20)) # rs2[4:0]

        if norm > 0:
            halfbit = np.int64(2**(norm-1))
        else:
            halfbit = np.int64(0)
            
        res = ((term1 + term2) + halfbit) >> norm
        return (np.int32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT32 =  0x7FFFFFFF
    MININT32 = -0x80000000

    p_addRNr = pulp_test_p_addRNr()
    p_addRNr.file_path = os.path.join(".", p_addRNr.mnemonic.replace('.', '_') + ".S")

    p_addRNr.add_arith_test(0, 0, 0)
    p_addRNr.add_arith_test(0, 0x1F, 0)
    p_addRNr.add_arith_test(0, 0, 1)
    p_addRNr.add_arith_test(1, 0, 0)
    p_addRNr.add_arith_test(MAXINT32, 0, 1)
    p_addRNr.add_arith_test(MININT32, 0, 1)
    p_addRNr.add_arith_test(1, 0, MAXINT32)
    p_addRNr.add_arith_test(1, 0, MININT32)
    p_addRNr.add_arith_test(MAXINT32, 0x1F, MAXINT32)
    p_addRNr.add_arith_test(MININT32, 0x1F, MININT32)
    p_addRNr.add_arith_test(MAXINT32, 0, MININT32)
    p_addRNr.add_arith_test(MININT32, 0, MAXINT32)
    p_addRNr.gen_arith_tests(10)

    p_addRNr.gen_src_dest_tests(2)
    p_addRNr.gen_bypass_tests(2)
    p_addRNr.gen_zero_reg_tests(2)
    p_addRNr.write_asm()
