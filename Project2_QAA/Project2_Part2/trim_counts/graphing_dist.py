#!/usr/bin/env python
#import bioinfo as bi
import argparse as arg
import matplotlib.pyplot as plt
#import gzip

def get_args():
    parser = arg.ArgumentParser(description="Takes in a count file and outputs a png file" \
    " with a graph of the read length distribution")
    parser.add_argument('-r1', '--read_1', help="Name of R1 input count file",type = str, required=True)
    parser.add_argument('-r2', '--read_2', help="Name of R2 input count file",type = str, required=True)
    parser.add_argument("-d", "--file_descriptor" , help = "Name of output file", type = str, required = True)
    #parser.add_argument("-l", "--length_of_read", help="Length of read",type = int, required = True)
    parser.add_argument("-u", "--uncompressed", action="store_false")
    #parser.add_argument("-s", "--save_fig_loc")
    return parser.parse_args()

args = get_args()
r1 = args.read_1
r2 = args.read_2
descript = args.file_descriptor
#lent = args.length_of_read
uncomp = args.uncompressed
#loc = args.save_fig_loc

r1_x = []
r1_y = []
r2_x = []
r2_y = []
with open(r1) as fh:
    for line in fh:
        line = line.strip().split()
        r1_x.append(int(line[1]))
        r1_y.append(int(line[0]))
with open(r2) as fh:
    for line in fh:
        line = line.strip().split()
        r2_x.append(int(line[1]))
        r2_y.append(int(line[0]))

plt.bar(x=r1_x, height=r1_y, color="b")
plt.bar(x=r2_x, height=r2_y, color="r",alpha=0.5)
plt.yscale("log")
plt.xlabel("Length of read")
plt.ylabel("Log of the number of reads with that length")
plt.legend(["Read 1", "Read 2"])
plt.savefig(descript)