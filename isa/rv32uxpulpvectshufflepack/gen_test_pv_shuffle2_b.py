import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_pv_shuffle2_b(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("pv.shuffle2.b",  res_format="0x{:08x}", src1_format="0x{:08x}", 
                         src2_format = "0x{:08x}", src3_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int, src3: int, ) -> int:
        bitstring.set_lsb0(True)
        bits0 = bitstring.pack('uint:32', src3)
        bits1 = bitstring.pack('uint:32', src1)
        sel = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray(32)


        for i in range(0,32,8):
            if sel[i+2]:
                source = bits1
            else:
                source = bits0
            
            byte = sel[i:i+2].uint *8
            res[i:i+8] = source[byte:byte+8]
        
        return res.uint


if __name__ == '__main__':
    pv_shuffle2_b = pulp_test_pv_shuffle2_b()
    pv_shuffle2_b.file_path = os.path.join(".", pv_shuffle2_b.mnemonic.replace('.', '_') + ".S")

    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000000, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000001, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000002, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000003, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000100, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000200, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00000300, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00010000, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00020000, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x00030000, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x01000000, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x02000000, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x03000000, 0xCCDDEEFF)

    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040404, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040405, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040406, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040407, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040504, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040604, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04040704, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04050404, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04060404, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x04070404, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x05040404, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x06040404, 0xCCDDEEFF)
    pv_shuffle2_b.add_arith_test(0x44332211, 0x07040404, 0xCCDDEEFF)

    pv_shuffle2_b.gen_arith_tests(10)

    pv_shuffle2_b.gen_src_dest_tests(2)
    pv_shuffle2_b.gen_bypass_tests(2)
    pv_shuffle2_b.gen_zero_reg_tests(2)
    pv_shuffle2_b.write_asm()
