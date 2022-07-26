import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_uimm5_op

class pulp_test_p_macsN(pulp_test_rrr_uimm5_op):
    def __init__(self):
        super().__init__("p.macsN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", src3_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[2] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[3] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, src3: int, imm1: int) -> int:
        src1 = np.int64(np.int16(src1))
        src2 = np.int64(np.int16(src2))
        src3 = np.int64(np.int32(src3))
        imm1 = np.int64(np.uint8(imm1)) # actually uint5

        res = ((src1 * src2) + src3) >> imm1
        return (np.int32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXINT32 = 0x7FFFFFFF
    MININT32 = -0x80000000
    MAXINT16 = 0x00007FFF
    MININT16 = -0x00008000

    p_macsN = pulp_test_p_macsN()
    p_macsN.file_path = os.path.join(".", p_macsN.mnemonic.replace('.', '_') + ".S")

    p_macsN.add_arith_test(0, 0, 0, 0)
    p_macsN.add_arith_test(0, 0, 0, 0x1F)
    p_macsN.add_arith_test(0, 0, MAXINT32, 0)
    p_macsN.add_arith_test(0, 0, MAXINT32, 0x1F)
    p_macsN.add_arith_test(0, 0, MININT32, 0)
    p_macsN.add_arith_test(0, 0, MININT32, 0x1F)
    p_macsN.add_arith_test(0, MAXINT32, 1, 0)
    p_macsN.add_arith_test(0x7FFF7FFF, 1, 1, 0)
    p_macsN.add_arith_test(MAXINT32, 0, 1, 0)
    p_macsN.add_arith_test(MAXINT16, 0x7FFF8001, 1, 0)
    p_macsN.add_arith_test(MAXINT16, 0x7FFF8000, 1, 0)
    p_macsN.add_arith_test(MAXINT16, 1, 1, 1)
    p_macsN.add_arith_test(MAXINT16, MAXINT16, MAXINT32, 2)
    p_macsN.add_arith_test(MAXINT16, MAXINT16, MAXINT32, 0x1F)
    p_macsN.add_arith_test(MININT16, 1, MAXINT32, 0)
    p_macsN.gen_arith_tests(10)

    p_macsN.gen_src_dest_tests(2)
    p_macsN.gen_bypass_tests(2)
    p_macsN.gen_zero_reg_tests(2)
    p_macsN.write_asm()
