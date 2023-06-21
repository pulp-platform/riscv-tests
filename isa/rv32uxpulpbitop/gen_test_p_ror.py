import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_p_ror(pulp_test_rr_op):
    def __init__(self):
        super().__init__("p.ror", res_format="{:d}", src1_format = "0b{:032b}", src2_format = "{:d}")
        
        
    def operation(self, src1: int, src2: int) -> int:
        bits = bitstring.pack('uint:32', src1)
        bits.ror(src2)
        
        res = bits.uint
        return res


if __name__ == '__main__':
    p_ror = pulp_test_p_ror()
    p_ror.file_path = os.path.join(".", p_ror.mnemonic.replace('.', '_') + ".S")

    p_ror.add_arith_test(0xF83C38CA, 0)
    p_ror.add_arith_test(0xF83C38CA, 1)
    p_ror.add_arith_test(0xF83C38CA, 31)
    p_ror.add_arith_test(0xF83C38CA, 32)
    p_ror.add_arith_test(0xF83C38CA, 33)
    p_ror.add_arith_test(0xF83C38CA, 65)
    p_ror.gen_arith_tests(10)

    p_ror.gen_src_dest_tests(2)
    p_ror.gen_bypass_tests(2)
    p_ror.gen_zero_reg_tests(2)
    p_ror.write_asm()
