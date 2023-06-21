import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_op

class pulp_test_pv_cplxconj_h(pulp_test_r_op):
    def __init__(self):
        super().__init__("pv.cplxconj.h", res_format  = "0x{:08x}", 
                                     src1_format = "0x{:08x}")

        self.minmax[0] = (0x00000000, 0xFFFFFFFF) # uint32
        

    def operation(self, src1: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)
        res = bitstring.BitArray()

        real_bits = bits[0:16]
        imag = np.int16(bits[16:32].unpack('int:16')[0])
        imag_bits = bitstring.pack('int:17', -imag)
        
        res.append(real_bits)
        res.append(imag_bits[0:16])
        
        return res.uint


if __name__ == '__main__':
    pv_cplxconj_h = pulp_test_pv_cplxconj_h()
    pv_cplxconj_h.file_path = os.path.join(".", pv_cplxconj_h.mnemonic.replace('.', '_') + ".S")

    pv_cplxconj_h.add_arith_test(0x80007fff)
    pv_cplxconj_h.add_arith_test(0x7fff8000)
    pv_cplxconj_h.add_arith_test(0x11223344)
    pv_cplxconj_h.gen_all_tests(10, 2)
    pv_cplxconj_h.write_asm()
