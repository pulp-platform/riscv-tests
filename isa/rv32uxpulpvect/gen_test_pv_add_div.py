import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_pv_add_div(pulp_test_rr_op):
    def __init__(self):
        super().__init__("pv.add",  res_format  = "0x{:08x}", 
                                    src1_format = "0x{:08x}",
                                    src2_format = "0x{:08x}")

        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.minmax[1] = (-0x80000000, +0x7FFFFFFF) # int32
        self.e_bits = 16
        self.rshift = 1
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits1 = bitstring.pack('int:32', src1)
        elements1 = [bits1[i:(i+self.e_bits)] for i in range(0,32,self.e_bits)]

        bits2 = bitstring.pack('int:32', src2)
        elements2 = [bits2[i:(i+self.e_bits)] for i in range(0,32,self.e_bits)]

        res = bitstring.BitArray()

        for pack in zip(elements1, elements2):
            elem1 = pack[0].unpack(f'int:{self.e_bits}')[0]
            elem2 = pack[1].unpack(f'int:{self.e_bits}')[0]

            res_e = elem1 + elem2
            res_bits = bitstring.pack(f'int:{self.e_bits+1}', res_e)
            res_bits = res_bits[0:self.e_bits]
            res_bits.int >>= self.rshift

            res.append(res_bits[0:self.e_bits])
        
        return res.int


if __name__ == '__main__':
    pv_add_div2_h = pulp_test_pv_add_div()
    pv_add_div2_h.mnemonic += '.h.div2'
    pv_add_div2_h.file_path = os.path.join(".", pv_add_div2_h.mnemonic.replace('.', '_') + ".S")

    pv_add_div2_h.add_arith_test(0x00000000, 0x00000000)
    pv_add_div2_h.add_arith_test(-0x80000000, -0x80000000)
    pv_add_div2_h.add_arith_test(-0x80000000, +0x7FFFFFFF)
    pv_add_div2_h.add_arith_test(+0x7FFFFFFF, +0x7FFFFFFF)
    pv_add_div2_h.add_arith_test(-0x44, -0x41)
    pv_add_div2_h.gen_all_tests(15, 2)
    pv_add_div2_h.write_asm()

    
    pv_add_div4_h = pulp_test_pv_add_div()
    pv_add_div4_h.mnemonic += '.h.div4'
    pv_add_div4_h.rshift = 2
    pv_add_div4_h.file_path = os.path.join(".", pv_add_div4_h.mnemonic.replace('.', '_') + ".S")

    pv_add_div4_h.add_arith_test(0x00000000, 0x00000000)
    pv_add_div4_h.add_arith_test(-0x80000000, -0x80000000)
    pv_add_div4_h.add_arith_test(-0x80000000, +0x7FFFFFFF)
    pv_add_div4_h.add_arith_test(+0x7FFFFFFF, +0x7FFFFFFF)
    pv_add_div4_h.add_arith_test(-0x44, -0x41)
    pv_add_div4_h.gen_all_tests(15, 2)
    pv_add_div4_h.write_asm()

    
    pv_add_div8_h = pulp_test_pv_add_div()
    pv_add_div8_h.mnemonic += '.h.div8'
    pv_add_div8_h.rshift = 3
    pv_add_div8_h.file_path = os.path.join(".", pv_add_div8_h.mnemonic.replace('.', '_') + ".S")

    pv_add_div8_h.add_arith_test(0x00000000, 0x00000000)
    pv_add_div8_h.add_arith_test(-0x80000000, -0x80000000)
    pv_add_div8_h.add_arith_test(-0x80000000, +0x7FFFFFFF)
    pv_add_div8_h.add_arith_test(+0x7FFFFFFF, +0x7FFFFFFF)
    pv_add_div8_h.add_arith_test(-0x44, -0x41)
    pv_add_div8_h.gen_all_tests(15, 2)
    pv_add_div8_h.write_asm()

