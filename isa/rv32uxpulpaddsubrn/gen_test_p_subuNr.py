import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_p_subuNr(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("p.subuNr", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", src3_format="{:d}")
        self.minmax[0] = ( 0x00000000,  0xFFFFFFFF) # uint32
        self.minmax[1] = ( 0x00000000,  0xFFFFFFFF) # uint32
        self.minmax[2] = ( 0x00000000,  0xFFFFFFFF) # uint32
        
    def operation(self, src1: int, src2: int, src3: int) -> int:
        term1 = np.uint64(np.uint32(src3))     # rd
        term2 = np.uint64(np.uint32(src1))     # rs1
        norm = np.uint64(np.uint8(src2%0x20)) # rs2[4:0]

        res = (term1 - term2) >> norm
        return (np.uint32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT32 = 0xFFFFFFFF
    MININT32 = 0x00000000

    p_subuNr = pulp_test_p_subuNr()
    p_subuNr.file_path = os.path.join(".", p_subuNr.mnemonic.replace('.', '_') + ".S")

    p_subuNr.add_arith_test(0, 0, 0)
    p_subuNr.add_arith_test(0, 0x1F, 0)
    p_subuNr.add_arith_test(0, 0, 1)
    p_subuNr.add_arith_test(1, 0, 0)
    p_subuNr.add_arith_test(MAXINT32, 0, 1)
    p_subuNr.add_arith_test(MININT32, 0, 1)
    p_subuNr.add_arith_test(1, 0, MAXINT32)
    p_subuNr.add_arith_test(1, 0, MININT32)
    p_subuNr.add_arith_test(MAXINT32, 0x1F, MAXINT32)
    p_subuNr.add_arith_test(MININT32, 0x1F, MININT32)
    p_subuNr.add_arith_test(MAXINT32, 0, MININT32)
    p_subuNr.add_arith_test(MININT32, 0, MAXINT32)
    p_subuNr.gen_arith_tests(10)

    p_subuNr.gen_src_dest_tests(2)
    p_subuNr.gen_bypass_tests(2)
    p_subuNr.gen_zero_reg_tests(2)
    p_subuNr.write_asm()
