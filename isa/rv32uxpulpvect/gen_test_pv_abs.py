import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_op

class pulp_test_pv_abs(pulp_test_r_op):
    def __init__(self):
        super().__init__("pv.abs", res_format  = "0x{:08x}", 
                                     src1_format = "0x{:08x}")

        self.minmax[0] = (-0x80000000, +0x7FFFFFFF) # int32
        self.e_bits = 16
        
        
    def operation(self, src1: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('int:32', src1)
        elements = [bits[i:(i+self.e_bits)] for i in range(0,32,self.e_bits)]
        res = bitstring.BitArray()

        for elem in elements:
            res_e = abs(elem.unpack(f'int:{self.e_bits}')[0])
            res_bits = bitstring.pack(f'uint:{self.e_bits}', res_e)
            res.append(res_bits)
        
        return res.uint


if __name__ == '__main__':
    pv_abs_h = pulp_test_pv_abs()
    pv_abs_h.mnemonic += '.h'
    pv_abs_h.file_path = os.path.join(".", pv_abs_h.mnemonic.replace('.', '_') + ".S")

    pv_abs_h.add_arith_test(0)
    pv_abs_h.add_arith_test(-1)
    pv_abs_h.add_arith_test(+1)
    pv_abs_h.add_arith_test(-0x80000000)
    pv_abs_h.add_arith_test(+0x7FFFFFFF)
    pv_abs_h.gen_all_tests(10, 2)
    pv_abs_h.write_asm()


    pv_abs_b = pulp_test_pv_abs()
    pv_abs_b.mnemonic += '.b'
    pv_abs_b.e_bits = 8
    pv_abs_b.file_path = os.path.join(".", pv_abs_b.mnemonic.replace('.', '_') + ".S")

    pv_abs_b.add_arith_test(0)
    pv_abs_b.add_arith_test(-1)
    pv_abs_b.add_arith_test(+1)
    pv_abs_b.add_arith_test(-0x80000000)
    pv_abs_b.add_arith_test(+0x7FFFFFFF)
    pv_abs_b.gen_all_tests(10, 2)
    pv_abs_b.write_asm()
