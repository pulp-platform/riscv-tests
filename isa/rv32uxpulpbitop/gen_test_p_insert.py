import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rd_r_uimm5_uimm5_op

class pulp_test_p_insert(pulp_test_rd_r_uimm5_uimm5_op):
    def __init__(self):
        super().__init__("p.insert",  res_format="0b{:032b}", dest_format="0x{:08x}", 
                         src1_format = "0b{:032b}", imm1_format="{:d}", imm2_format="{:d}")
        
        
    def operation(self, dest: int, src1: int, imm1: int, imm2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)

        res = bitstring.pack('uint:32', dest)

        lowerbound = max(imm2+imm1-31, 0)

        insrt = bits[lowerbound:imm1+1]
        res.overwrite(insrt, imm2)
        
        return res.uint


if __name__ == '__main__':
    p_insert = pulp_test_p_insert()
    p_insert.file_path = os.path.join(".", p_insert.mnemonic.replace('.', '_') + ".S")

    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 0, 0)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 0, 1)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 1, 0)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 31, 0)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 31, 1)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 0, 31)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 31, 30)
    p_insert.add_arith_test(0x55555555, 0xF83C38CA, 31, 31)
    p_insert.gen_arith_tests(10)

    p_insert.gen_src_dest_tests(2)
    p_insert.gen_bypass_tests(2)
    p_insert.gen_zero_reg_tests(2)
    p_insert.write_asm()
