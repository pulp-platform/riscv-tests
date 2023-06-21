import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_uimm5_uimm5_op

class pulp_test_p_extract(pulp_test_r_uimm5_uimm5_op):
    def __init__(self):
        super().__init__("p.extract",  res_format="0b{:032b}", src1_format = "0b{:032b}", 
                                    imm1_format="{:d}", imm2_format="{:d}")
        
        
    def operation(self, src1: int, imm1: int, imm2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)

        res = bits[imm2:min(imm2+imm1+1, 32)]
        res = res[-1:]*(32-len(res)) + res
        
        return res.uint


if __name__ == '__main__':
    p_extract = pulp_test_p_extract()
    p_extract.file_path = os.path.join(".", p_extract.mnemonic.replace('.', '_') + ".S")

    p_extract.add_arith_test(0xF83C38CA, 0, 0)
    p_extract.add_arith_test(0xF83C38CA, 0, 1)
    p_extract.add_arith_test(0xF83C38CA, 1, 0)
    p_extract.add_arith_test(0xF83C38CA, 31, 0)
    p_extract.add_arith_test(0xF83C38CA, 31, 1)
    p_extract.add_arith_test(0xF83C38CA, 0, 31)
    p_extract.add_arith_test(0xF83C38CA, 31, 30)
    p_extract.add_arith_test(0xF83C38CA, 31, 31)
    p_extract.gen_arith_tests(10)

    p_extract.gen_src_dest_tests(2)
    p_extract.gen_bypass_tests(2)
    p_extract.gen_zero_reg_tests(2)
    p_extract.write_asm()
