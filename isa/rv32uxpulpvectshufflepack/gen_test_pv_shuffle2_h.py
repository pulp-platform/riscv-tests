import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_pv_shuffle2_h(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("pv.shuffle2.h",  res_format="0x{:08x}", src1_format="0x{:08x}", 
                         src2_format = "0x{:08x}", src3_format="0x{:08x}")
        
        
    def operation(self, src1: int, src2: int, src3: int, ) -> int:
        bitstring.set_lsb0(True)
        bits0 = bitstring.pack('uint:32', src3)
        bits1 = bitstring.pack('uint:32', src1)
        sel = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray(32)


        for i in range(0,32,16):
            if sel[i+1]:
                source = bits1
            else:
                source = bits0
            
            word = sel[i:i+1].uint *16
            res[i:i+16] = source[word:word+16]
        
        return res.uint


if __name__ == '__main__':
    pv_shuffle2_h = pulp_test_pv_shuffle2_h()
    pv_shuffle2_h.file_path = os.path.join(".", pv_shuffle2_h.mnemonic.replace('.', '_') + ".S")

    pv_shuffle2_h.add_arith_test(0x44332211, 0x00000000, 0xCCDDEEFF)
    pv_shuffle2_h.add_arith_test(0x44332211, 0x00000001, 0xCCDDEEFF)
    pv_shuffle2_h.add_arith_test(0x44332211, 0x00000002, 0xCCDDEEFF)
    pv_shuffle2_h.add_arith_test(0x44332211, 0x00000003, 0xCCDDEEFF)
    pv_shuffle2_h.add_arith_test(0x44332211, 0x00010000, 0xCCDDEEFF)
    pv_shuffle2_h.add_arith_test(0x44332211, 0x00020000, 0xCCDDEEFF)
    pv_shuffle2_h.add_arith_test(0x44332211, 0x00030000, 0xCCDDEEFF)
    pv_shuffle2_h.gen_arith_tests(10)

    pv_shuffle2_h.gen_src_dest_tests(2)
    pv_shuffle2_h.gen_bypass_tests(2)
    pv_shuffle2_h.gen_zero_reg_tests(2)
    pv_shuffle2_h.write_asm()
