import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_op

class pulp_test_p_cnt(pulp_test_r_op):
    def __init__(self):
        super().__init__("p.cnt", res_format="{:d}", src1_format = "0b{:032b}")
        
        
    def operation(self, src1: int) -> int:
        bits = bitstring.pack('uint:32', src1)
        
        res = bits.count(True)
        return res


if __name__ == '__main__':
    p_cnt = pulp_test_p_cnt()
    p_cnt.file_path = os.path.join(".", p_cnt.mnemonic.replace('.', '_') + ".S")

    p_cnt.add_arith_test(0x00000000)
    p_cnt.add_arith_test(0x00000001)
    p_cnt.add_arith_test(0x80000000)
    p_cnt.add_arith_test(0xFFFFFFFF)
    p_cnt.add_arith_test(0x7FFFFFFF)
    p_cnt.add_arith_test(0xFFFFFFFE)
    p_cnt.gen_arith_tests(10)

    p_cnt.gen_src_dest_tests(2)
    p_cnt.gen_bypass_tests(2)
    p_cnt.gen_zero_reg_tests(2)
    p_cnt.write_asm()
