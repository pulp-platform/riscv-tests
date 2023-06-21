import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_uimm5_uimm5_op

class pulp_test_p_bitrev(pulp_test_r_uimm5_uimm5_op):
    def __init__(self):
        super().__init__("p.bitrev",  res_format="0b{:032b}", src1_format = "0b{:032b}", 
                                    imm1_format="{:d}", imm2_format="{:d}")
        self.minmax[1] = (0, 0x02)
        
        
    def operation(self, src1: int, imm1: int, imm2: int) -> int:
        bitstring.set_lsb0(False)
        bits = bitstring.pack('uint:32', src1)
        res = bitstring.BitArray(32)
        gsize = imm1+1
        shift = imm2

        bits = bits << shift

        for i in range(0,32,gsize):
            if i + gsize < 32:
                res[(32-i-gsize):(32-i)] = bits[i:(i+gsize)]
        return res.uint


if __name__ == '__main__':
    p_bitrev = pulp_test_p_bitrev()
    p_bitrev.file_path = os.path.join(".", p_bitrev.mnemonic.replace('.', '_') + ".S")

    # examples from docs
    p_bitrev.add_arith_test(0xC64A5933, 0, 4)
    p_bitrev.add_arith_test(0xC64A5933, 1, 4)
    p_bitrev.add_arith_test(0xC64A5933, 2, 4)

    p_bitrev.add_arith_test(0xF83C38CA, 0, 0)
    p_bitrev.add_arith_test(0xF83C38CA, 1, 0)
    p_bitrev.add_arith_test(0xF83C38CA, 2, 0)
    p_bitrev.add_arith_test(0xF83C38CA, 0, 1)
    p_bitrev.add_arith_test(0xF83C38CA, 1, 1)
    p_bitrev.add_arith_test(0xF83C38CA, 2, 1)
    p_bitrev.add_arith_test(0xF83C38CA, 0, 30)
    p_bitrev.add_arith_test(0xF83C38CA, 1, 30)
    p_bitrev.add_arith_test(0xF83C38CA, 2, 30)
    p_bitrev.add_arith_test(0xF83C38CA, 0, 31)
    p_bitrev.add_arith_test(0xF83C38CA, 1, 31)
    p_bitrev.add_arith_test(0xF83C38CA, 2, 31)
    p_bitrev.gen_arith_tests(10)

    p_bitrev.gen_src_dest_tests(2)
    p_bitrev.gen_bypass_tests(2)
    p_bitrev.gen_zero_reg_tests(2)
    p_bitrev.write_asm()
