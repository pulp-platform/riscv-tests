import os
from typing import Dict, List
from collections import OrderedDict


class test_macro:
    def __init__(self, name: str, args_dict: OrderedDict):
        '''
            Implements a representation of an assembler test-macros.

            Parameters:
                name (str): name of the assembler macro
                args_dict (OrderedDict): dictionary with the macro-arguments in
                    the same order, the values are formatting strings that will be used
        '''
        self.name = name
        self.formatters = args_dict.copy()

    def fill(self, args: Dict):
        '''
            Fills in the arguments of this test-macro.

            Parameters:
                args (Dict): dictionary with all arguments, the keys need to be the same
                    as in the formatters-OrderedDict, it can contain unused arguments
        '''
        out = self.name + "( "
        for argname, formatter in self.formatters.items():
            if argname in args.keys():
                # python represents ints with a signed bit, this converts
                # negative numbers to positive numbers in twos complement
                if ('x' in formatter or 'b' in formatter) and args[argname]<0:
                    val_bytes = args[argname].to_bytes(4, byteorder='big', signed=True)
                    val = int.from_bytes(val_bytes, byteorder='big', signed=False)
                else:
                    val = args[argname]
                out += formatter.format(val) + ", "
            else:
                raise Exception("required arg {} not found in args".format(argname)) 

        return (out[:-2] + " )")   


class pulp_test_op:
    def __init__(self, mnemonic: str):
        '''
            Implements the basic test-generator
            Uses the template and macros in test_macros.h to check the
            functionality of this operation.
            This is not useful alone, use the operand-dependent test-generators instead

            Parameters:
                mnemonic (str): Assembler mnemonic of operation
        '''
        self.template_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "pulp_template.S")

        self.mnemonic = mnemonic
        self.file_path = os.path.join(os.getcwd(), mnemonic.replace('.', '_') + ".S")
        self.description = ""

        # min and max for all operands
        self.minmax = [(0, 0xFFFFFFFF)]

        self.maxnops = 2
        self.testnum = 2
        self.arith_tests = ""
        self.src_dest_tests = ""
        self.bypass_tests = ""
        self.zero_reg_tests = ""
    
    def write_asm(self):
        template_values = { "<mnemonic>": self.mnemonic,
                            "<descr>": self.description,
                            "<arith-tests>": self.arith_tests,
                            "<src-dest-tests>": self.src_dest_tests,
                            "<bypass-tests>": self.bypass_tests,
                            "<zero-reg-tests>": self.zero_reg_tests}

        with open(self.template_path, 'r') as template, open(self.file_path, 'w+') as file:
            for line in template:
                num_tabs = len(line) - len(line.lstrip('\t'))
                num_spaces = len(line) - len(line.lstrip(' ')) - num_tabs
                whitespace = " " * num_tabs + " " * num_spaces
                for key, val in template_values.items():
                    val = val.replace("\n", "\n" + whitespace)
                    line = line.replace(key, val)

                file.write(line)
