import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_pv_pack_h(pulp_test_rr_op):
    def __init__(self):
        super().__init__("pv.pack.h",  res_format="0x{:08x}", 
                         src1_format = "0x{:08x}", src2_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits1 = bitstring.pack('uint:32', src1)
        bits2 = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray(32)

        res[16:32] = bits1[16:32]
        res[0:16] = bits2[16:32]
        
        return res.uint


if __name__ == '__main__':
    pv_pack_h = pulp_test_pv_pack_h()
    pv_pack_h.file_path = os.path.join(".", pv_pack_h.mnemonic.replace('.', '_') + ".S")

    pv_pack_h.add_arith_test(0x44332211, 0xCCDDEEFF)
    pv_pack_h.gen_arith_tests(10)

    pv_pack_h.gen_src_dest_tests(2)
    pv_pack_h.gen_bypass_tests(2)
    pv_pack_h.gen_zero_reg_tests(2)
    pv_pack_h.write_asm()
