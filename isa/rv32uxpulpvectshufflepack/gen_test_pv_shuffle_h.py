import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_pv_shuffle_h(pulp_test_rr_op):
    def __init__(self):
        super().__init__("pv.shuffle.h",  res_format="0x{:08x}", 
                         src1_format = "0x{:08x}", src2_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)
        sel = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray(32)

        hstart = sel[16:17].uint *16
        lstart = sel[0:1].uint *16

        res[16:32] = bits[hstart:hstart+16]
        res[0:16] = bits[lstart:lstart+16]
        
        return res.uint


if __name__ == '__main__':
    pv_shuffle_h = pulp_test_pv_shuffle_h()
    pv_shuffle_h.file_path = os.path.join(".", pv_shuffle_h.mnemonic.replace('.', '_') + ".S")

    pv_shuffle_h.add_arith_test(0x44332211, (0<<16) + 0)
    pv_shuffle_h.add_arith_test(0x44332211, (0<<16) + 1)
    pv_shuffle_h.add_arith_test(0x44332211, (1<<16) + 0)
    pv_shuffle_h.add_arith_test(0x44332211, (1<<16) + 1)
    pv_shuffle_h.gen_arith_tests(10)

    pv_shuffle_h.gen_src_dest_tests(2)
    pv_shuffle_h.gen_bypass_tests(2)
    pv_shuffle_h.gen_zero_reg_tests(2)
    pv_shuffle_h.write_asm()
