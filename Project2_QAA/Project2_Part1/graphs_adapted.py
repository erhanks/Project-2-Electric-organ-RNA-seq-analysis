#!/usr/bin/env python

import bioinfo as bi
import argparse as arg
import matplotlib.pyplot as plt
import numpy as np

def get_args():
    parser=arg.ArgumentParser(description="Graphing quality scores ")
    parser.add_argument("-f", "--file")
    parser.add_argument("-l", "--num_lines", help="Number of lines in file")
    return parser.parse_args()

args = get_args()
file = args.file
num_line = args.num_lines

with open(file) as fq:
    i = 0
    for line in fq:
        line = line.strip()
        i += 1
        if i==2:
            len_line = len(line)
            phreds = np.zeros((len_line, num_line))
        elif i%4 == 0:
            for j,letter in enumerate(line):
                phreds[j][(i//4)-1] = bi.convert_phred(letter)
                #print(phreds[j][i-1])
                #print(bi.convert_phred(letter))
    print(phreds[0][:100])