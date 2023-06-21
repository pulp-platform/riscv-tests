import random
from collections import OrderedDict

from .pulp_test_op import pulp_test_op, test_macro


class pulp_test_rr_uimm5_op(pulp_test_op):
    def __init__(self, mnemonic: str, res_format = "0x{:08x}", src1_format = "0x{:08x}", 
                                     src2_format = "0x{:08x}", imm1_format = "0x{:02x}"):
        '''
            Implements the test-generator of a generic operation (two reg and one immediate operands)
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            Create a child of this class per operation and implement the operation() method.
            Then you can call the gen_*_tests() functions to generate the tests
            and finally the write_asm() function to write it to a file.

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        super().__init__(mnemonic)

        self.minmax.append((0, 0xFFFFFFFF))
        self.minmax.append((0, 0x01F))

        args_format = OrderedDict([("testnum", "{:d}"), ("op", "{:s}"), 
                                   ("res", res_format), ("src1", src1_format), 
                                   ("src2", src2_format), ("imm1", imm1_format)])
        self.arith_macro = test_macro("TEST_RR_UIMM5_OP", args_format)


        self.src_dest_macros = [test_macro("TEST_RR_UIMM5_SRC1_EQ_DEST", args_format),
                                test_macro("TEST_RR_UIMM5_SRC2_EQ_DEST", args_format)]

        args_format.pop("src2")
        self.src_dest_macros.append(test_macro("TEST_RR_UIMM5_SRC12_EQ_DEST", args_format)) # enforce src1 = src2!


        args_format = OrderedDict([("testnum", "{:d}"), ("nops1", "{:d}"), ("nops2", "{:d}"), 
                                   ("op", "{:s}"), ("res", res_format), 
                                   ("src1", src1_format), ("src2", src2_format), 
                                   ("imm1", imm1_format)])

        self.bypass_macros = [test_macro("TEST_RR_UIMM5_SRC12_BYPASS", args_format),
                              test_macro("TEST_RR_UIMM5_SRC21_BYPASS", args_format)]
        args_format.pop("nops2")
        self.bypass_macros.append(test_macro("TEST_RR_UIMM5_DEST_BYPASS", args_format))


        args_format = OrderedDict([ ("testnum", "{:d}"), ("op", "{:s}"), 
                                    ("res", res_format), ("src2", src2_format),
                                    ("imm1", imm1_format)])
        self.zero_reg_macros = [test_macro("TEST_RR_UIMM5_ZEROSRC1", args_format)]
        
        args_format = OrderedDict([ ("testnum", "{:d}"), ("op", "{:s}"), 
                                    ("res", res_format), ("src1", src1_format),
                                    ("imm1", imm1_format)])
        self.zero_reg_macros.append(test_macro("TEST_RR_UIMM5_ZEROSRC2", args_format))
        args_format.pop("src1")
        self.zero_reg_macros.append(test_macro("TEST_RR_UIMM5_ZEROSRC12", args_format))
        
        args_format = OrderedDict([ ("testnum", "{:d}"), ("op", "{:s}"),
                                    ("src1", src1_format), ("src2", res_format),
                                    ("imm1", imm1_format)])
        self.zero_reg_macros.append(test_macro("TEST_RR_UIMM5_ZERODEST", args_format))


    def operation(self, src1: int, src2: int, imm1: int) -> int:
        '''
            'Virtual' method implementing a specific operation/instruction
            res = op(src1, src2, imm1)

            Parameters:
                src1 (int): Value of first register operand
                src2 (int): Value of secnd register operand
                imm1 (int): Value of first immediate operand

            Returns:
                res (int): Expected value in destination register after operation
        '''
        raise NotImplementedError()
        res = src1
        return res


    def add_arith_test(self, src1: int, src2: int, imm1: int):
        '''
            Adds one operation to the test procedure, testing operation correctness itself

            Parameters:
                src1 (int): Value of first register operand
                src2 (int): Value of secnd register operand
                imm1 (int): Value of first immediate operand
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic,
                "res": self.operation(src1, src2, imm1), 
                "src1": src1, "src2": src2, "imm1": imm1}
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
            src2 = random.randint(*self.minmax[1])
            imm1 = random.randint(*self.minmax[2])
            self.add_arith_test(src1, src2, imm1)


    def gen_src_dest_tests(self, num_per: int):
        '''
            Adds N randomly generated tests per macro to the test procedure, 
            testing correctness when source and destination registers are the same

            Parameters:
                num_per (int): number of tests to be added
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic}

        for macro in self.src_dest_macros: # (&dest) == (&src1) and (&dest) == (&src2) 
            for i in range(num_per):
                args["src1"] = random.randint(*self.minmax[0])
                args["src2"] = random.randint(*self.minmax[1])
                args["imm1"] = random.randint(*self.minmax[2])

                if "SRC12_EQ_DEST" in macro.name:
                    args["src2"] = args["src1"] # because (&src1) == (&src2)

                args["res"] = self.operation(args["src1"], args["src2"], args["imm1"])
                self.src_dest_tests += macro.fill(args) + "\n"
                args["testnum"] += 1

            self.src_dest_tests += "\n"

        self.testnum = args["testnum"]


    def gen_bypass_tests(self, num_per: int):
        '''
            Adds N randomly generated tests per valid #NOPs to the test procedure, 
            testing correctness for bypassing stages (using bubbles in pipeline)

            Parameters:
                num_per (int): number of tests to be added per macro and #NOPs / size of bubble
        '''
        args = {"testnum": self.testnum, "op": self.mnemonic, "nops1": 0, "nops2": 0}

        for macro in self.bypass_macros[0:1]: # src1-then-src2 and src2-then-src1
            for i in range(num_per):
                for nops1 in range(self.maxnops +1):
                    args["nops1"] = nops1
                    for nops2 in range(self.maxnops +1):
                        args["nops2"] = nops2
                        args["src1"] = random.randint(*self.minmax[0])
                        args["src2"] = random.randint(*self.minmax[1])
                        args["imm1"] = random.randint(*self.minmax[2])
                        args["res"] = self.operation(args["src1"], args["src2"], args["imm1"])
                        self.bypass_tests += macro.fill(args) + "\n"
                        args["testnum"] += 1

            self.bypass_tests += "\n"

        macro = self.bypass_macros[2] # dest-reg bypassed
        for i in range(num_per):
            for nops1 in range(self.maxnops +1):
                args["nops1"] = nops1
                args["src1"] = random.randint(*self.minmax[0])
                args["src2"] = args["src1"] # because (&src1) == (&src2)
                args["imm1"] = random.randint(*self.minmax[2])
                args["res"] = self.operation(args["src1"], args["src2"], args["imm1"])
                self.src_dest_tests += macro.fill(args) + "\n"
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
                args["src1"] = random.randint(*self.minmax[0])
                args["src2"] = random.randint(*self.minmax[1])
                args["imm1"] = random.randint(*self.minmax[2])

                if "ZEROSRC1" in macro.name:
                    args["src1"] = 0
                if "ZEROSRC2" in macro.name.replace('1', ''):
                    args["src2"] = 0

                args["res"] = self.operation(args["src1"], args["src2"], args["imm1"])
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

