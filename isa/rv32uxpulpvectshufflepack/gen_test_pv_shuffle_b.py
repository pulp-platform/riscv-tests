import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_pv_shuffle_b(pulp_test_rr_op):
    def __init__(self):
        super().__init__("pv.shuffle.b",  res_format="0x{:08x}", 
                         src1_format = "0x{:08x}", src2_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)
        sel = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray(32)

        start3 = sel[24:26].uint *8
        start2 = sel[16:18].uint *8
        start1 = sel[8:10].uint *8
        start0 = sel[0:2].uint *8

        res[24:32] = bits[start3:start3+8]
        res[16:24] = bits[start2:start2+8]
        res[ 8:16] = bits[start1:start1+8]
        res[ 0: 8] = bits[start0:start0+8]
        
        return res.uint


if __name__ == '__main__':
    pv_shuffle_b = pulp_test_pv_shuffle_b()
    pv_shuffle_b.file_path = os.path.join(".", pv_shuffle_b.mnemonic.replace('.', '_') + ".S")

    pv_shuffle_b.add_arith_test(0x44332211, 0x00000000)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00000001)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00000002)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00000003)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00000100)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00000200)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00000300)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00010000)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00020000)
    pv_shuffle_b.add_arith_test(0x44332211, 0x00030000)
    pv_shuffle_b.add_arith_test(0x44332211, 0x01000000)
    pv_shuffle_b.add_arith_test(0x44332211, 0x02000000)
    pv_shuffle_b.add_arith_test(0x44332211, 0x03000000)
    pv_shuffle_b.gen_arith_tests(10)

    pv_shuffle_b.gen_src_dest_tests(2)
    pv_shuffle_b.gen_bypass_tests(2)
    pv_shuffle_b.gen_zero_reg_tests(2)
    pv_shuffle_b.write_asm()
