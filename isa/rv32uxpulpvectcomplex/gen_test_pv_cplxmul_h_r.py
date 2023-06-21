import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rrr_op

class pulp_test_pv_cplxmul_h_r(pulp_test_rrr_op):
    def __init__(self):
        super().__init__("pv.cplxmul.h.r", res_format  = "0x{:08x}", 
                                         src1_format = "0x{:08x}",
                                         src2_format = "0x{:08x}",
                                         src3_format = "0x{:08x}")

        self.minmax[0] = (0x00000000, +0xFFFFFFFF) # uint32
        self.minmax[1] = (0x00000000, +0xFFFFFFFF) # uint32
        self.minmax[2] = (0x00000000, +0xFFFFFFFF) # uint32
        self.rshift = 15
        
        
    def operation(self, src1: int, src2: int, src3: int) -> int:
        bitstring.set_lsb0(True)
        bits1 = bitstring.pack('uint:32', src1)
        bits2 = bitstring.pack('uint:32', src2)
        res = bitstring.pack('uint:32', src3)
        
        op1_real = bits1[ 0:16].unpack('int:16')[0]
        op1_imag = bits1[16:32].unpack('int:16')[0]
        op2_real = bits2[ 0:16].unpack('int:16')[0]
        op2_imag = bits2[16:32].unpack('int:16')[0]

        # Re{res} = (Re{op1}*Re{op2} - Im{op1}*Im{op2}) >> rshift
        res_real = op1_real*op2_real - op1_imag*op2_imag
        real_bits = bitstring.pack('int:33', res_real)
        real_bits = real_bits[0:32]
        real_bits.int >>= self.rshift
        res[0:16] = real_bits[0:16]
        
        return res.uint


if __name__ == '__main__':
    pv_cplxmul_h_r = pulp_test_pv_cplxmul_h_r()
    pv_cplxmul_h_r.file_path = os.path.join(".", pv_cplxmul_h_r.mnemonic.replace('.', '_') + ".S")

    pv_cplxmul_h_r.add_arith_test(0x55667788, 0x11223344, 0x12345678)
    pv_cplxmul_h_r.add_arith_test(0x11223344, 0x55667788, 0x12345678)
    pv_cplxmul_h_r.add_arith_test(0x80008000, 0x80008000, 0x12345678)
    pv_cplxmul_h_r.add_arith_test(0x7fff8000, 0x80007fff, 0x12345678)
    pv_cplxmul_h_r.gen_all_tests(15, 2)
    pv_cplxmul_h_r.write_asm()


    pv_cplxmul_h_r_div2 = pulp_test_pv_cplxmul_h_r()
    pv_cplxmul_h_r_div2.mnemonic += '.div2'
    pv_cplxmul_h_r_div2.rshift = 16
    pv_cplxmul_h_r_div2.file_path = os.path.join(".", pv_cplxmul_h_r_div2.mnemonic.replace('.', '_') + ".S")

    pv_cplxmul_h_r_div2.add_arith_test(0x55667788, 0x11223344, 0x12345678)
    pv_cplxmul_h_r_div2.add_arith_test(0x11223344, 0x55667788, 0x12345678)
    pv_cplxmul_h_r_div2.add_arith_test(0x80008000, 0x80008000, 0x12345678)
    pv_cplxmul_h_r_div2.add_arith_test(0x7fff8000, 0x80007fff, 0x12345678)
    pv_cplxmul_h_r_div2.gen_all_tests(15, 2)
    pv_cplxmul_h_r_div2.write_asm()

    
    pv_cplxmul_h_r_div4 = pulp_test_pv_cplxmul_h_r()
    pv_cplxmul_h_r_div4.mnemonic += '.div4'
    pv_cplxmul_h_r_div4.rshift = 17
    pv_cplxmul_h_r_div4.file_path = os.path.join(".", pv_cplxmul_h_r_div4.mnemonic.replace('.', '_') + ".S")

    pv_cplxmul_h_r_div4.add_arith_test(0x55667788, 0x11223344, 0x12345678)
    pv_cplxmul_h_r_div4.add_arith_test(0x11223344, 0x55667788, 0x12345678)
    pv_cplxmul_h_r_div2.add_arith_test(0x80008000, 0x80008000, 0x12345678)
    pv_cplxmul_h_r_div4.add_arith_test(0x7fff8000, 0x80007fff, 0x12345678)
    pv_cplxmul_h_r_div4.gen_all_tests(15, 2)
    pv_cplxmul_h_r_div4.write_asm()

    
    pv_cplxmul_h_r_div8 = pulp_test_pv_cplxmul_h_r()
    pv_cplxmul_h_r_div8.mnemonic += '.div8'
    pv_cplxmul_h_r_div8.rshift = 18
    pv_cplxmul_h_r_div8.file_path = os.path.join(".", pv_cplxmul_h_r_div8.mnemonic.replace('.', '_') + ".S")

    pv_cplxmul_h_r_div8.add_arith_test(0x55667788, 0x11223344, 0x12345678)
    pv_cplxmul_h_r_div8.add_arith_test(0x11223344, 0x55667788, 0x12345678)
    pv_cplxmul_h_r_div2.add_arith_test(0x80008000, 0x80008000, 0x12345678)
    pv_cplxmul_h_r_div8.add_arith_test(0x7fff8000, 0x80007fff, 0x12345678)
    pv_cplxmul_h_r_div8.gen_all_tests(15, 2)
    pv_cplxmul_h_r_div8.write_asm()

