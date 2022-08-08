import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_p_insertr(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("p.insertr",  res_format="0b{:032b}", src1_format="0b{:032b}", 
                         src2_format = "0x{:08x}", src3_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int, src3: int, ) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)

        res = bitstring.pack('uint:32', src3)

        sel = bitstring.pack('uint:32', src2)
        base = sel[0:4+1].uint
        upto = sel[5:9+1].uint

        lowerbound = max(upto+base-31, 0)

        insrt = bits[lowerbound:upto+1]
        res.overwrite(insrt, base)
        
        return res.uint


if __name__ == '__main__':
    p_insertr = pulp_test_p_insertr()
    p_insertr.file_path = os.path.join(".", p_insertr.mnemonic.replace('.', '_') + ".S")

    p_insertr.add_arith_test(0xF83C38CA,(0<<5) + 0, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (0<<5) + 1, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (1<<5) + 0, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (31<<5) + 0, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (31<<5) + 1, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (0<<5) + 31, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (31<<5) + 30, 0x55555555)
    p_insertr.add_arith_test(0xF83C38CA, (31<<5) + 31, 0x55555555)
    p_insertr.gen_arith_tests(10)

    p_insertr.gen_src_dest_tests(2)
    p_insertr.gen_bypass_tests(2)
    p_insertr.gen_zero_reg_tests(2)
    p_insertr.write_asm()
