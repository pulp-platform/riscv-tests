import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_pv_packhi_b(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("pv.packhi.b",  res_format="0x{:08x}", src1_format="0x{:08x}", 
                         src2_format = "0x{:08x}", src3_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int, src3: int, ) -> int:
        bitstring.set_lsb0(True)
        bits0 = bitstring.pack('uint:32', src3)
        bits1 = bitstring.pack('uint:32', src1)
        bits2 = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray(32)

        res[24:32] = bits1[0:8]
        res[16:24] = bits2[0:8]
        res[ 0:16] = bits0[0:16]
        
        return res.uint


if __name__ == '__main__':
    pv_packhi_b = pulp_test_pv_packhi_b()
    pv_packhi_b.file_path = os.path.join(".", pv_packhi_b.mnemonic.replace('.', '_') + ".S")

    pv_packhi_b.add_arith_test(0x44332211, 0xCCDDEEFF, 0x1F2E3D4C)
    pv_packhi_b.gen_arith_tests(10)

    pv_packhi_b.gen_src_dest_tests(2)
    pv_packhi_b.gen_bypass_tests(2)
    pv_packhi_b.gen_zero_reg_tests(2)
    pv_packhi_b.write_asm()
