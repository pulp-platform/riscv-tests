import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_uimm5_op

class pulp_test_p_mulhhsRN(pulp_test_rr_uimm5_op):
    def __init__(self):
        super().__init__("p.mulhhsRN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[2] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, imm1: int) -> int:
        src1 = np.int64(np.int16(src1 >> 16))
        src2 = np.int64(np.int16(src2 >> 16))
        imm1 = np.int64(np.uint8(imm1)) # actually uint5
        
        if imm1 > 0:
            halfbit = np.int64(2**(imm1-1))
        else:
            halfbit = np.int64(0)
            
        res = ((src1 * src2) + halfbit) >> imm1
        return (np.int32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT16 = 0x00007FFF
    MININT16 = -0x00008000

    p_mulhhsRN = pulp_test_p_mulhhsRN()
    p_mulhhsRN.file_path = os.path.join(".", p_mulhhsRN.mnemonic.replace('.', '_') + ".S")

    p_mulhhsRN.add_arith_test(0, 0, 0)
    p_mulhhsRN.add_arith_test(0, 0, 0x1F)
    p_mulhhsRN.add_arith_test(0, 1, 0)
    p_mulhhsRN.add_arith_test(1, 0, 0)
    p_mulhhsRN.add_arith_test(MININT16, 1, 0)
    p_mulhhsRN.add_arith_test(MAXINT16, 1, 0)
    p_mulhhsRN.add_arith_test(MAXINT16, MAXINT16, 0x1F)
    p_mulhhsRN.add_arith_test(MININT16, MININT16, 0x1F)
    p_mulhhsRN.add_arith_test(MAXINT16, MAXINT16, 0)
    p_mulhhsRN.add_arith_test(MININT16, MININT16, 0)
    p_mulhhsRN.add_arith_test(0x7FFF0001, 1, 0)
    p_mulhhsRN.add_arith_test(0x00017FFF, 1, 0)
    p_mulhhsRN.add_arith_test(1, 0x7FFF0001, 0)
    p_mulhhsRN.add_arith_test(1, 0x00017FFF, 0)
    p_mulhhsRN.gen_arith_tests(10)

    p_mulhhsRN.gen_src_dest_tests(2)
    p_mulhhsRN.gen_bypass_tests(2)
    p_mulhhsRN.gen_zero_reg_tests(2)
    p_mulhhsRN.write_asm()
