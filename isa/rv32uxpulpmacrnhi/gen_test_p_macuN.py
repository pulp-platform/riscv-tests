import numpy as np # for easy casting via uint32(), int16() etc
import os

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_uimm5_op

class pulp_test_p_macuN(pulp_test_rrr_uimm5_op):
    def __init__(self):
        super().__init__("p.macuN", res_format="{:d}", src1_format="{:d}", 
                         src2_format="{:d}", src3_format="{:d}", imm1_format="{:d}")
        self.minmax[0] = (0x00, +0xFFFFFFFF) # int32
        self.minmax[1] = (0x00, +0xFFFFFFFF) # int32
        self.minmax[2] = (0x00, +0xFFFFFFFF) # int32
        self.minmax[3] = (0x00, 0x1F) # uint5
        
    def operation(self, src1: int, src2: int, src3: int, imm1: int) -> int:
        src1 = np.uint64(np.uint16(src1))
        src2 = np.uint64(np.uint16(src2))
        src3 = np.uint64(np.uint32(src3))
        imm1 = np.uint64(np.uint8(imm1)) # actually uint5

        res = ((src1 * src2) + src3) >> imm1
        return (np.uint32(res)).item() # so we return the python int, not the numpy


if __name__ == '__main__':
    MAXUINT32 = 0xFFFFFFFF
    MINUINT32 = 0x00000000
    MAXUINT16 = 0xFFFF
    MINUINT16 = 0x0000

    p_macuN = pulp_test_p_macuN()
    p_macuN.file_path = os.path.join(".", p_macuN.mnemonic.replace('.', '_') + ".S")

    p_macuN.add_arith_test(0, 0, 0, 0)
    p_macuN.add_arith_test(0, 0, 0, 0x1F)
    p_macuN.add_arith_test(0, 0, MAXUINT32, 0)
    p_macuN.add_arith_test(0, 0, MAXUINT32, 0x1F)
    p_macuN.add_arith_test(0, MAXUINT32, 1, 0)
    p_macuN.add_arith_test(0xFFFF8000, 1, 1, 0)
    p_macuN.add_arith_test(MAXUINT32, 0, 1, 0)
    p_macuN.add_arith_test(MAXUINT16, 0xFFFF0001, 1, 0)
    p_macuN.add_arith_test(MAXUINT16, 0xFFFF0000, 1, 0)
    p_macuN.add_arith_test(MAXUINT16, 1, 1, 1)
    p_macuN.add_arith_test(MAXUINT16, MAXUINT16, MAXUINT32, 2)
    p_macuN.add_arith_test(MAXUINT16, MAXUINT16, MAXUINT32, 0x1F)
    p_macuN.gen_arith_tests(10)

    p_macuN.gen_src_dest_tests(2)
    p_macuN.gen_bypass_tests(2)
    p_macuN.gen_zero_reg_tests(2)
    p_macuN.write_asm()
