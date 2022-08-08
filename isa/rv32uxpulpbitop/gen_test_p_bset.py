import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_uimm5_uimm5_op

class pulp_test_p_bset(pulp_test_r_uimm5_uimm5_op):
    def __init__(self):
        super().__init__("p.bset",  res_format="0b{:032b}", src1_format = "0b{:032b}", 
                                    imm1_format="{:d}", imm2_format="{:d}")
        
        
    def operation(self, src1: int, imm1: int, imm2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)

        for idx in range(imm2, min(imm1+imm2+1,32), 1):
            bits[idx] = True
        
        res = bits.uint
        return res


if __name__ == '__main__':
    p_bset = pulp_test_p_bset()
    p_bset.file_path = os.path.join(".", p_bset.mnemonic.replace('.', '_') + ".S")

    p_bset.add_arith_test(0x00000000, 0, 0)
    p_bset.add_arith_test(0x00000000, 0, 1)
    p_bset.add_arith_test(0x00000000, 1, 0)
    p_bset.add_arith_test(0x00000000, 31, 0)
    p_bset.add_arith_test(0x00000000, 31, 1)
    p_bset.add_arith_test(0x00000000, 0, 31)
    p_bset.add_arith_test(0x00000000, 31, 30)
    p_bset.add_arith_test(0x00000000, 31, 31)
    p_bset.gen_arith_tests(10)

    p_bset.gen_src_dest_tests(2)
    p_bset.gen_bypass_tests(2)
    p_bset.gen_zero_reg_tests(2)
    p_bset.write_asm()
