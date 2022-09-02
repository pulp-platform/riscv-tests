import numpy as np # for easy casting via uint32(), int16() etc
import os
import bitstring

import sys
sys.path.append("../scripts")
from pulp_test_gen import pulp_test_rr_op, pulp_test_r_uimm6_op

# common implementation for vector < (unsigned)
# for all element-sizes, with and without scalar-replication
# and for the cases where op2 is reg or imm6
def pv_cmpltu_op(op1: int, op2: int, e_bits: int, sc_mode: bool):
    bitstring.set_lsb0(True)
    bits1 = bitstring.pack('uint:32', op1)
    elements1 = [bits1[i:(i+e_bits)] for i in range(0,32,e_bits)]

    bits2 = bitstring.pack('uint:32', op2)
    if sc_mode is True:
        elements2 = [bits2[0:e_bits] for i in range(0,32,e_bits)]
    else:
        elements2 = [bits2[i:(i+e_bits)] for i in range(0,32,e_bits)]

    res = bitstring.BitArray()

    for pack in zip(elements1, elements2):
        elem1 = pack[0].unpack(f'uint:{e_bits}')[0]
        elem2 = pack[1].unpack(f'uint:{e_bits}')[0]
        if elem1 < elem2:
            res_e = 1
        else:
            res_e = 0

        res_bits = bitstring.pack(f'uint:{e_bits+1}', res_e)
        res.append(res_bits[0:e_bits])
    
    return res.uint


class pulp_test_pv_cmpltu(pulp_test_rr_op):
    def __init__(self):
        super().__init__("pv.cmpltu",  res_format  = "0x{:08x}", 
                                    src1_format = "0x{:08x}",
                                    src2_format = "0x{:08x}")

        self.minmax[0] = (0x00000000, +0xffffffff) # uint32
        self.minmax[1] = (0x00000000, +0xffffffff) # uint32
        self.e_bits = 16
        self.scalar_rep = False
        
        
    def operation(self, src1: int, src2: int) -> int:
        res = pv_cmpltu_op(src1, src2, self.e_bits, self.scalar_rep)
        
        return res


class pulp_test_pv_cmpltu_sci(pulp_test_r_uimm6_op):
    def __init__(self):
        super().__init__("pv.cmpltu.sci", res_format  = "0x{:08x}", 
                                         src1_format = "0x{:08x}",
                                         imm1_format = "0x{:03x}")

        self.minmax[0] = (0x00000000, +0xffffffff) # uint32
        self.minmax[1] = (0x00, 0x03F) # uint6
        self.e_bits = 16
        self.scalar_rep = True
        
        
    def operation(self, src1: int, src2: int) -> int:
        res = pv_cmpltu_op(src1, src2, self.e_bits, self.scalar_rep)
        
        return res


if __name__ == '__main__':
    # compare-equals halfwords
    pv_cmpltu_h = pulp_test_pv_cmpltu()
    pv_cmpltu_h.mnemonic += '.h'
    pv_cmpltu_h.file_path = os.path.join(".", pv_cmpltu_h.mnemonic.replace('.', '_') + ".S")

    pv_cmpltu_h.add_arith_test(0x01234567, 0x01234567)
    pv_cmpltu_h.add_arith_test(0x01234567, 0x00234067)
    pv_cmpltu_h.add_arith_test(0x01234567, 0x01204560)
    pv_cmpltu_h.add_arith_test(0x01234567, 0x45670123)
    pv_cmpltu_h.add_arith_test(0x01234567, 0x23016745)
    pv_cmpltu_h.gen_all_tests(15, 2)
    pv_cmpltu_h.write_asm()

    # compare-equals bytes
    pv_cmpltu_b = pulp_test_pv_cmpltu()
    pv_cmpltu_b.mnemonic += '.b'
    pv_cmpltu_b.e_bits = 8
    pv_cmpltu_b.file_path = os.path.join(".", pv_cmpltu_b.mnemonic.replace('.', '_') + ".S")

    pv_cmpltu_b.add_arith_test(0x01234567, 0x01234567)
    pv_cmpltu_b.add_arith_test(0x01234567, 0x00234067)
    pv_cmpltu_b.add_arith_test(0x01234567, 0x01204560)
    pv_cmpltu_b.add_arith_test(0x01234567, 0x45670123)
    pv_cmpltu_b.add_arith_test(0x01234567, 0x23016745)
    pv_cmpltu_b.gen_all_tests(15, 2)
    pv_cmpltu_b.write_asm()

    # compare-equals halfwords (op2 is scalar)
    pv_cmpltu_sc_h = pulp_test_pv_cmpltu()
    pv_cmpltu_sc_h.mnemonic += '.sc.h'
    pv_cmpltu_sc_h.scalar_rep = True
    pv_cmpltu_sc_h.file_path = os.path.join(".", pv_cmpltu_sc_h.mnemonic.replace('.', '_') + ".S")

    pv_cmpltu_sc_h.add_arith_test(0x01234567, 0x01234567)
    pv_cmpltu_sc_h.add_arith_test(0x01234567, 0x00234067)
    pv_cmpltu_sc_h.add_arith_test(0x01234567, 0x01204560)
    pv_cmpltu_sc_h.add_arith_test(0x01234567, 0x45670123)
    pv_cmpltu_sc_h.add_arith_test(0x01234567, 0x23016745)
    pv_cmpltu_sc_h.gen_all_tests(15, 2)
    pv_cmpltu_sc_h.write_asm()

    # compare-equals bytes (op2 is scalar)
    pv_cmpltu_sc_b = pulp_test_pv_cmpltu()
    pv_cmpltu_sc_b.mnemonic += '.sc.b'
    pv_cmpltu_sc_b.e_bits = 8
    pv_cmpltu_sc_b.scalar_rep = True
    pv_cmpltu_sc_b.file_path = os.path.join(".", pv_cmpltu_sc_b.mnemonic.replace('.', '_') + ".S")

    pv_cmpltu_sc_b.add_arith_test(0x01234567, 0x01234567)
    pv_cmpltu_sc_b.add_arith_test(0x01234567, 0x00234067)
    pv_cmpltu_sc_b.add_arith_test(0x01234567, 0x01204560)
    pv_cmpltu_sc_b.add_arith_test(0x01234567, 0x45670123)
    pv_cmpltu_sc_b.add_arith_test(0x01234567, 0x23016745)
    pv_cmpltu_sc_b.gen_all_tests(15, 2)
    pv_cmpltu_sc_b.write_asm()

    # compare-equals halfwords (op2 is immediate)
    pv_cmpltu_sci_h = pulp_test_pv_cmpltu_sci()
    pv_cmpltu_sci_h.mnemonic += '.h'
    pv_cmpltu_sci_h.file_path = os.path.join(".", pv_cmpltu_sci_h.mnemonic.replace('.', '_') + ".S")

    pv_cmpltu_sci_h.add_arith_test(0x01234567, 0x00)
    pv_cmpltu_sci_h.add_arith_test(0x01234567, 0x12)
    pv_cmpltu_sci_h.add_arith_test(0x01234567, 0x01)
    pv_cmpltu_sci_h.gen_all_tests(15, 2)
    pv_cmpltu_sci_h.write_asm()

    # compare-equals bytes (op2 is immediate)
    pv_cmpltu_sci_b = pulp_test_pv_cmpltu_sci()
    pv_cmpltu_sci_b.mnemonic += '.b'
    pv_cmpltu_sci_b.e_bits = 8
    pv_cmpltu_sci_b.file_path = os.path.join(".", pv_cmpltu_sci_b.mnemonic.replace('.', '_') + ".S")

    pv_cmpltu_sci_b.add_arith_test(0x01234567, 0x00)
    pv_cmpltu_sci_b.add_arith_test(0x01234567, 0x12)
    pv_cmpltu_sci_b.add_arith_test(0x01234567, 0x01)
    pv_cmpltu_sci_b.gen_all_tests(15, 2)
    pv_cmpltu_sci_b.write_asm()
