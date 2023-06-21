import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_r_uimm6_op

class pulp_test_pv_shufflei3_sci_b(pulp_test_r_uimm6_op):
    def __init__(self):
        super().__init__("pv.shufflei3.sci.b", res_format="0x{:08x}", 
                         src1_format = "0x{:08x}", imm1_format="0b{:08b}")
        
        
    def operation(self, src1: int, imm1: int) -> int:
        bitstring.set_lsb0(True)
        bits = bitstring.pack('uint:32', src1)
        sel = bitstring.pack('uint:6', imm1)
        res = bitstring.BitArray(32)

        start2 = sel[4:6].uint *8
        start1 = sel[2:4].uint *8
        start0 = sel[0:2].uint *8

        res[24:32] = bits[24:32]
        res[16:24] = bits[start2:start2+8]
        res[ 8:16] = bits[start1:start1+8]
        res[ 0: 8] = bits[start0:start0+8]
        
        return res.uint


if __name__ == '__main__':
    pv_shufflei3_sci_b = pulp_test_pv_shufflei3_sci_b()
    pv_shufflei3_sci_b.file_path = os.path.join(".", pv_shufflei3_sci_b.mnemonic.replace('.', '_') + ".S")

    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b000000)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b000001)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b000010)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b000011)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b000100)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b001000)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b001100)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b010000)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b100000)
    pv_shufflei3_sci_b.add_arith_test(0x44332211, 0b110000)
    pv_shufflei3_sci_b.gen_arith_tests(10)

    pv_shufflei3_sci_b.gen_src_dest_tests(2)
    pv_shufflei3_sci_b.gen_bypass_tests(2)
    pv_shufflei3_sci_b.gen_zero_reg_tests(2)
    pv_shufflei3_sci_b.write_asm()
