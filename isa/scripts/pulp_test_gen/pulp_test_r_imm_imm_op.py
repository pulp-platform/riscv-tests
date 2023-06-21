import random
from collections import OrderedDict

from .pulp_test_op import pulp_test_op, test_macro


class pulp_test_r_imm_imm_op(pulp_test_op):
    def __init__(self, mnemonic: str, res_format = "0x{:08x}", src1_format = "0x{:08x}", 
                 imm1_format = "0x{:03x}", imm2_format = "0x{:03x}"):
        '''
            Implements the test-generator of a generic operation (one reg and two imm operand)
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            Create a child of this class per operation and implement the operation() method.
            Then you can call the gen_*_tests() functions to generate the tests
            and finally the write_asm() function to write it to a file.

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        super().__init__(mnemonic)

        self.minmax.append((0, 0x0FFF)) # imm1
        self.minmax.append((0, 0x0FFF)) # imm2

        args_format = OrderedDict([("testnum", "{:d}"), ("nops", "{:d}"), 
                                   ("op", "{:s}"), ("res", res_format), ("src1", src1_format), 
                                   ("imm1", imm1_format), ("imm2", imm2_format)])

        self.bypass_macros = [test_macro("TEST_IMM_IMM_SRC1_BYPASS", args_format),
                              test_macro("TEST_IMM_IMM_DEST_BYPASS", args_format)]

        args_format.pop("nops")
        self.arith_macro = test_macro("TEST_IMM_IMM_OP", args_format)
        self.src_dest_macro = test_macro("TEST_IMM_IMM_SRC1_EQ_DEST", args_format)

        args_format = OrderedDict([("testnum", "{:d}"), ("op", "{:s}"), ("res", res_format), 
                                   ("imm1", imm1_format), ("imm2", imm2_format)])
        self.zero_reg_macros = [test_macro("TEST_IMM_IMM_ZEROSRC1", args_format)]
        
        args_format = OrderedDict([("testnum", "{:d}"), ("op", "{:s}"), ("src1", src1_format), 
                                   ("imm1", imm1_format), ("imm2", imm2_format)])
        self.zero_reg_macros.append(test_macro("TEST_IMM_IMM_ZERODEST", args_format))


    def operation(self, src1: int, imm1: int, imm2: int) -> int:
        '''
            'Virtual' method implementing a specific operation/instruction
            res = op(src1, imm1, imm2)

            Parameters:
                src1 (int): Value of first register operand
                imm1 (int): Value of first immdiate operand
                imm2 (int): Value of second immdiate operand

            Returns:
                res (int): Expected value in destination register after operation
        '''
        raise NotImplementedError()
        res = src1
        return res


    def add_arith_test(self, src1: int, imm1: int, imm2: int):
        '''
            Adds one operation to the test procedure, testing operation correctness itself

            Parameters:
                src1 (int): Value of first register operand
                imm1 (int): Value of first immdiate operand
                imm2 (int): Value of second immdiate operand
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic,
                "res": self.operation(src1, imm1, imm2), "src1": src1, "imm1": imm1, "imm2": imm2}
        self.arith_tests += self.arith_macro.fill(args) + "\n"
        self.testnum += 1


    def gen_arith_tests(self, num: int):
        '''
            Adds N randomly generated tests to the test procedure

            Parameters:
                num (int): number of tests to be added
        '''
        for i in range(num):
            src1 = random.randint(*self.minmax[0])
            imm1 = random.randint(*self.minmax[1])
            imm2 = random.randint(*self.minmax[2])
            self.add_arith_test(src1, imm1, imm2)


    def gen_src_dest_tests(self, num: int):
        '''
            Adds N randomly generated tests to the test procedure, 
            testing correctness when source and destination registers are the same

            Parameters:
                num (int): number of tests to be added
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic}

        for i in range(num):
            args["src1"] = random.randint(*self.minmax[0])
            args["imm1"] = random.randint(*self.minmax[1])
            args["imm2"] = random.randint(*self.minmax[2])
            args["res"] = self.operation(args["src1"], args["imm1"], args["imm2"])
            self.src_dest_tests += self.src_dest_macro.fill(args) + "\n"
            args["testnum"] += 1

        self.testnum = args["testnum"]


    def gen_bypass_tests(self, num_per: int):
        '''
            Adds N randomly generated tests per valid #NOPs to the test procedure, 
            testing correctness for bypassing stages (using bubbles in pipeline)

            Parameters:
                num_per (int): number of tests to be added per macro and #NOPs / size of bubble
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic, "nops": 0}

        for macro in self.bypass_macros:
            for i in range(num_per):
                for nops in range(self.maxnops +1):
                    args["src1"] = random.randint(*self.minmax[0])
                    args["imm1"] = random.randint(*self.minmax[1])
                    args["imm2"] = random.randint(*self.minmax[2])
                    args["res"] = self.operation(args["src1"], args["imm1"], args["imm2"])
                    args["nops"] = nops
                    self.bypass_tests += macro.fill(args) + "\n"
                    args["testnum"] += 1

            self.bypass_tests += "\n"

        self.testnum = args["testnum"]

    
    def gen_zero_reg_tests(self, num_per: int):
        '''
            Adds N randomly generated tests per macro to the test procedure, 
            testing correctness if a src or dest register is the zero-register x0

            Parameters:
                num_per (int): number of tests to be added per macro
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic}

        for macro in self.zero_reg_macros:
            for i in range(num_per):
                if "ZEROSRC1" in macro.name:
                    args["src1"] = 0
                else:
                    args["src1"] = random.randint(*self.minmax[0])

                args["imm1"] = random.randint(*self.minmax[1])
                args["imm2"] = random.randint(*self.minmax[2])
                args["res"] = self.operation(args["src1"], args["imm1"], args["imm2"])
                self.zero_reg_tests += macro.fill(args) + "\n"
                args["testnum"] += 1

            self.zero_reg_tests += "\n"

        self.testnum = args["testnum"]

    
    def gen_all_tests(self, num_arith: int, num_special: int):
        '''
            Adds randomly generated arithmetic and special tests
            to the test procedure, less verbose option with a bit less control
            compared to explicitly generating each group

            Parameters:
                num_arith (int):   number of arithmetic tests to be added
                num_special (int): number of special tests to be added per test-macro
        '''
        self.gen_arith_tests(num_arith)
        self.gen_src_dest_tests(num_special)
        self.gen_bypass_tests(num_special)
        self.gen_zero_reg_tests(num_special)



class pulp_test_r_uimm5_uimm5_op(pulp_test_r_imm_imm_op):
    def __init__(self, mnemonic: str, res_format = "0x{:08x}", src1_format = "0x{:08x}", 
                 imm1_format = "0x{:02x}", imm2_format = "0x{:02x}"):
        '''
            Implements the test-generator of a generic operation (one reg and two 5bit-uint imm operand)
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            Create a child of this class per operation and implement the operation() method.
            Then you can call the gen_*_tests() functions to generate the tests
            and finally the write_asm() function to write it to a file.

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        super().__init__(mnemonic, res_format, src1_format, imm1_format, imm2_format)

        imm_type = "UIMM5"
        self.minmax[1] = (0, 0x01F)
        self.minmax[2] = (0, 0x01F)

        for macro in self.bypass_macros:
            macro.name = macro.name.replace("IMM", imm_type)

        self.arith_macro.name = self.arith_macro.name.replace("IMM", imm_type)
        self.src_dest_macro.name = self.src_dest_macro.name.replace("IMM", imm_type)

        for macro in self.zero_reg_macros:
            macro.name = macro.name.replace("IMM", imm_type)



class pulp_test_r_uimm6_uimm6_op(pulp_test_r_imm_imm_op):
    def __init__(self, mnemonic: str, res_format = "0x{:08x}", src1_format = "0x{:08x}", 
                 imm1_format = "0x{:02x}", imm2_format = "0x{:02x}"):
        '''
            Implements the test-generator of a generic operation (one reg and two 6bit-uint imm operand)
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            Create a child of this class per operation and implement the operation() method.
            Then you can call the gen_*_tests() functions to generate the tests
            and finally the write_asm() function to write it to a file.

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        super().__init__(mnemonic, res_format, src1_format, imm1_format, imm2_format)

        imm_type = "UIMM6"
        self.minmax[1] = (0, 0x03F)
        self.minmax[2] = (0, 0x03F)

        for macro in self.bypass_macros:
            macro.name = macro.name.replace("IMM", imm_type)

        self.arith_macro.name = self.arith_macro.name.replace("IMM", imm_type)
        self.src_dest_macro.name = self.src_dest_macro.name.replace("IMM", imm_type)

        for macro in self.zero_reg_macros:
            macro.name = macro.name.replace("IMM", imm_type)



class pulp_test_r_simm6_simm6_op(pulp_test_r_imm_imm_op):
    def __init__(self, mnemonic: str, res_format = "0x{:08x}", src1_format = "0x{:08x}", 
                 imm1_format = "0x{:d}", imm2_format = "0x{:d}"):
        '''
            Implements the test-generator of a generic operation (one reg and two 6bit-int imm operand)
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            Create a child of this class per operation and implement the operation() method.
            Then you can call the gen_*_tests() functions to generate the tests
            and finally the write_asm() function to write it to a file.

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        super().__init__(mnemonic, res_format, src1_format, imm1_format, imm2_format)

        imm_type = "SIMM6"
        self.minmax[1] = (-0x020, 0x01F)
        self.minmax[2] = (-0x020, 0x01F)

        for macro in self.bypass_macros:
            macro.name = macro.name.replace("IMM", imm_type)

        self.arith_macro.name = self.arith_macro.name.replace("IMM", imm_type)
        self.src_dest_macro.name = self.src_dest_macro.name.replace("IMM", imm_type)

        for macro in self.zero_reg_macros:
            macro.name = macro.name.replace("IMM", imm_type)
