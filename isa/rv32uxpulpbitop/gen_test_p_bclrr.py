import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_p_bclrr(pulp_test_rr_op):
    def __init__(self):
        super().__init__("p.bclrr",  res_format="0b{:032b}", 
                         src1_format = "0b{:032b}", src2_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)

        sel = bitstring.pack('uint:32', src2)
        base = sel[0:4+1].uint
        upto = sel[5:9+1].uint

        for idx in range(base, min(base+upto+1,32), 1):
            bits[idx] = False
        
        res = bits.uint
        return res


if __name__ == '__main__':
    p_bclrr = pulp_test_p_bclrr()
    p_bclrr.file_path = os.path.join(".", p_bclrr.mnemonic.replace('.', '_') + ".S")

    p_bclrr.add_arith_test(0xFFFFFFFF, (0<<5) + 0)
    p_bclrr.add_arith_test(0xFFFFFFFF, (0<<5) + 1)
    p_bclrr.add_arith_test(0xFFFFFFFF, (1<<5) + 0)
    p_bclrr.add_arith_test(0xFFFFFFFF, (31<<5) + 0)
    p_bclrr.add_arith_test(0xFFFFFFFF, (31<<5) + 1)
    p_bclrr.add_arith_test(0xFFFFFFFF, (0<<5) + 31)
    p_bclrr.add_arith_test(0xFFFFFFFF, (31<<5) + 30)
    p_bclrr.add_arith_test(0xFFFFFFFF, (31<<5) + 31)
    p_bclrr.gen_arith_tests(10)

    p_bclrr.gen_src_dest_tests(2)
    p_bclrr.gen_bypass_tests(2)
    p_bclrr.gen_zero_reg_tests(2)
    p_bclrr.write_asm()
