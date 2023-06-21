import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_p_extractur(pulp_test_rr_op):
    def __init__(self):
        super().__init__("p.extractur",  res_format="0b{:032b}", 
                         src1_format = "0b{:032b}", src2_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)

        sel = bitstring.pack('uint:32', src2)
        base = sel[0:4+1].uint
        upto = sel[5:9+1].uint

        res = bits[base:min(upto+base+1, 32)]
        res = [0]*(32-len(res)) + res
        
        return res.uint


if __name__ == '__main__':
    p_extractur = pulp_test_p_extractur()
    p_extractur.file_path = os.path.join(".", p_extractur.mnemonic.replace('.', '_') + ".S")

    p_extractur.add_arith_test(0xF83C38CA, (0<<5) + 0)
    p_extractur.add_arith_test(0xF83C38CA, (0<<5) + 1)
    p_extractur.add_arith_test(0xF83C38CA, (1<<5) + 0)
    p_extractur.add_arith_test(0xF83C38CA, (31<<5) + 0)
    p_extractur.add_arith_test(0xF83C38CA, (31<<5) + 1)
    p_extractur.add_arith_test(0xF83C38CA, (0<<5) + 31)
    p_extractur.add_arith_test(0xF83C38CA, (31<<5) + 30)
    p_extractur.add_arith_test(0xF83C38CA, (31<<5) + 31)
    p_extractur.gen_arith_tests(10)

    p_extractur.gen_src_dest_tests(2)
    p_extractur.gen_bypass_tests(2)
    p_extractur.gen_zero_reg_tests(2)
    p_extractur.write_asm()
