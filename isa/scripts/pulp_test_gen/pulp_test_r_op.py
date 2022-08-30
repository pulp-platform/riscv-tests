import random
from collections import OrderedDict

from .pulp_test_op import pulp_test_op, test_macro


class pulp_test_r_op(pulp_test_op):
    def __init__(self, mnemonic: str, res_format = "0x{:08x}", src1_format = "0x{:08x}"):
        '''
            Implements the test-generator of a generic operation (one reg operand)
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            Create a child of this class per operation and implement the operation() method.
            Then you can call the gen_*_tests() functions to generate the tests
            and finally the write_asm() function to write it to a file.

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        super().__init__(mnemonic)

        args_format = OrderedDict([("testnum", "{:d}"), ("nops", "{:d}"), 
                                   ("op", "{:s}"), ("res", res_format), ("src1", src1_format)])

        self.bypass_macro = test_macro("TEST_R_DEST_BYPASS", args_format)
        args_format.pop("nops")
        self.arith_macro = test_macro("TEST_R_OP", args_format)
        self.src_dest_macro = test_macro("TEST_R_SRC1_EQ_DEST", args_format)

        args_format = OrderedDict([("testnum", "{:d}"), ("op", "{:s}"), 
                                   ("res", res_format)])
        self.zero_reg_macros = [test_macro("TEST_R_ZEROSRC1", args_format)]
        
        args_format = OrderedDict([("testnum", "{:d}"), ("op", "{:s}"), 
                                   ("src1", src1_format)])
        self.zero_reg_macros.append(test_macro("TEST_R_ZERODEST", args_format))


    def operation(self, src1: int) -> int:
        '''
            'Virtual' method implementing a specific operation/instruction
            res = op(src1)

            Parameters:
                src1 (int): Value of first register operand

            Returns:
                res (int): Expected value in destination register after operation
        '''
        raise NotImplementedError()
        res = src1
        return res


    def add_arith_test(self, src1: int):
        '''
            Adds one operation to the test procedure, testing operation correctness itself

            Parameters:
                src1 (int): Value of first register operand
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic, "res": self.operation(src1), "src1": src1}
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
            self.add_arith_test(src1)


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
            args["res"] = self.operation(args["src1"])
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

        for i in range(num_per):
            for nops in range(self.maxnops +1):
                args["nops"] = nops
                args["src1"] = random.randint(*self.minmax[0])
                args["res"] = self.operation(args["src1"])
                self.bypass_tests += self.bypass_macro.fill(args) + "\n"
                args["testnum"] += 1

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

                args["res"] = self.operation(args["src1"])
                self.zero_reg_tests += macro.fill(args) + "\n"
                args["testnum"] += 1

            self.zero_reg_tests += "\n"

        self.testnum = args["testnum"]

