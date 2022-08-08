import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_op

class pulp_test_p_clb(pulp_test_r_op):
    def __init__(self):
        super().__init__("p.clb", res_format="{:d}", src1_format = "0b{:032b}")
        
        
    def operation(self, src1: int) -> int:
        bitstring.set_lsb0(False)
        bits = bitstring.pack('uint:32', src1)
        msb = bits[0:1]

        first = bits.find(~msb)

        if first is  None or first == ():
            if msb[0] == True:
                return 32
            else:
                return 0
        else:
            res = first[0] 
        
        return res


if __name__ == '__main__':
    p_clb = pulp_test_p_clb()
    p_clb.file_path = os.path.join(".", p_clb.mnemonic.replace('.', '_') + ".S")

    p_clb.add_arith_test(0x00000000)
    p_clb.add_arith_test(0x00000001)
    p_clb.add_arith_test(0x80000000)
    p_clb.add_arith_test(0xFFFFFFFF)
    p_clb.add_arith_test(0x7FFFFFFF)
    p_clb.add_arith_test(0xFFFFFFFE)
    p_clb.gen_arith_tests(10)

    p_clb.gen_src_dest_tests(2)
    p_clb.gen_bypass_tests(2)
    #p_clb.gen_zero_reg_tests(2)
    p_clb.write_asm()
