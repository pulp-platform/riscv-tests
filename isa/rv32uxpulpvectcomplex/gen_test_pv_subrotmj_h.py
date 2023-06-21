import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring
import numpy as np

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op

class pulp_test_pv_subrotmj_h(pulp_test_rr_op):
    def __init__(self):
        super().__init__("pv.subrotmj.h", res_format  = "0x{:08x}", 
                                        src1_format = "0x{:08x}",
                                        src2_format = "0x{:08x}")

        self.minmax[0] = (0x00000000, +0xFFFFFFFF) # uint32
        self.minmax[1] = (0x00000000, +0xFFFFFFFF) # uint32
        self.rshift = 0
        
        
    def operation(self, src1: int, src2: int) -> int:
        bitstring.set_lsb0(True)
        bits1 = bitstring.pack('uint:32', src1)
        bits2 = bitstring.pack('uint:32', src2)
        res = bitstring.BitArray()
        
        op1_real = bits1[ 0:16].unpack('int:16')[0]
        op1_imag = bits1[16:32].unpack('int:16')[0]
        op2_real = bits2[ 0:16].unpack('int:16')[0]
        op2_imag = bits2[16:32].unpack('int:16')[0]

        # (op1 - op2)*(-i) >> div
        res_real = op1_imag - op2_imag
        res_imag = op2_real - op1_real

        real_bits = bitstring.pack('int:17', res_real)
        imag_bits = bitstring.pack('int:17', res_imag)
        real_bits = real_bits[0:16]
        imag_bits = imag_bits[0:16]
        real_bits.int >>= self.rshift
        imag_bits.int >>= self.rshift
        
        res.append(real_bits)
        res.append(imag_bits)
        
        return res.uint


if __name__ == '__main__':
    pv_subrotmj_h = pulp_test_pv_subrotmj_h()
    pv_subrotmj_h.file_path = os.path.join(".", pv_subrotmj_h.mnemonic.replace('.', '_') + ".S")

    pv_subrotmj_h.add_arith_test(0x55667788, 0x11223344)
    pv_subrotmj_h.add_arith_test(0x11223344, 0x55667788)
    pv_subrotmj_h.add_arith_test(0x80008000, 0x80008000)
    pv_subrotmj_h.add_arith_test(0x7fff8000, 0x80007fff)
    pv_subrotmj_h.gen_all_tests(15, 2)
    pv_subrotmj_h.write_asm()


    pv_subrotmj_h_div2 = pulp_test_pv_subrotmj_h()
    pv_subrotmj_h_div2.mnemonic += '.div2'
    pv_subrotmj_h_div2.rshift = 1
    pv_subrotmj_h_div2.file_path = os.path.join(".", pv_subrotmj_h_div2.mnemonic.replace('.', '_') + ".S")

    pv_subrotmj_h_div2.add_arith_test(0x55667788, 0x11223344)
    pv_subrotmj_h_div2.add_arith_test(0x11223344, 0x55667788)
    pv_subrotmj_h_div2.add_arith_test(0x80008000, 0x80008000)
    pv_subrotmj_h_div2.add_arith_test(0x7fff8000, 0x80007fff)
    pv_subrotmj_h_div2.gen_all_tests(15, 2)
    pv_subrotmj_h_div2.write_asm()

    
    pv_subrotmj_h_div4 = pulp_test_pv_subrotmj_h()
    pv_subrotmj_h_div4.mnemonic += '.div4'
    pv_subrotmj_h_div4.rshift = 2
    pv_subrotmj_h_div4.file_path = os.path.join(".", pv_subrotmj_h_div4.mnemonic.replace('.', '_') + ".S")

    pv_subrotmj_h_div4.add_arith_test(0x55667788, 0x11223344)
    pv_subrotmj_h_div4.add_arith_test(0x11223344, 0x55667788)
    pv_subrotmj_h_div2.add_arith_test(0x80008000, 0x80008000)
    pv_subrotmj_h_div4.add_arith_test(0x7fff8000, 0x80007fff)
    pv_subrotmj_h_div4.gen_all_tests(15, 2)
    pv_subrotmj_h_div4.write_asm()

    
    pv_subrotmj_h_div8 = pulp_test_pv_subrotmj_h()
    pv_subrotmj_h_div8.mnemonic += '.div8'
    pv_subrotmj_h_div8.rshift = 3
    pv_subrotmj_h_div8.file_path = os.path.join(".", pv_subrotmj_h_div8.mnemonic.replace('.', '_') + ".S")

    pv_subrotmj_h_div8.add_arith_test(0x55667788, 0x11223344)
    pv_subrotmj_h_div8.add_arith_test(0x11223344, 0x55667788)
    pv_subrotmj_h_div2.add_arith_test(0x80008000, 0x80008000)
    pv_subrotmj_h_div8.add_arith_test(0x7fff8000, 0x80007fff)
    pv_subrotmj_h_div8.gen_all_tests(15, 2)
    pv_subrotmj_h_div8.write_asm()

