import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_op

class pulp_test_p_fl1(pulp_test_r_op):
    def __init__(self):
        super().__init__("p.fl1", res_format="{:d}", src1_format = "0b{:032b}")
        
        
    def operation(self, src1: int) -> int:
        bitstring.set_lsb0(False)
        bits = bitstring.pack('uint:32', src1)
        
        first = bits.find('0b1')

        if first is None or first == ():
            res = 32
        else:
            res = 31-first[0]

        return res


if __name__ == '__main__':
    p_fl1 = pulp_test_p_fl1()
    p_fl1.file_path = os.path.join(".", p_fl1.mnemonic.replace('.', '_') + ".S")

    p_fl1.add_arith_test(0x00000000)
    p_fl1.add_arith_test(0x00000001)
    p_fl1.add_arith_test(0x80000000)
    p_fl1.add_arith_test(0xFFFFFFFF)
    p_fl1.add_arith_test(0x7FFFFFFF)
    p_fl1.add_arith_test(0xFFFFFFFE)
    p_fl1.gen_arith_tests(10)

    p_fl1.gen_src_dest_tests(2)
    p_fl1.gen_bypass_tests(2)
    #p_fl1.gen_zero_reg_tests(2)
    p_fl1.write_asm()
