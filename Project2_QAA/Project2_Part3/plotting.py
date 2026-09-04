#!/usr/bin/env python

import matplotlib.pyplot as plt


crhyes = "/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Crh_rhy51_EO_6cm_1_htseqcounts_yesstranded.txt"
crhrev = "/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Crh_rhy51_EO_6cm_1_htseqcounts_revstranded.txt"
ccoxyes = "/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/CcoxCrh_comrhy114_EO_adult_1_htseqcounts_yesstranded.txt"
ccoxrev = "/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/CcoxCrh_comrhy114_EO_adult_1_htseqcounts_revstranded.txt"


crh_x = []
crh_y = []

ccox_x = []
ccox_y = []
with open(crhyes) as crhy:
    for line in crhy:
        line = line.strip().split()
        crh_x.append(line[1])

with open(crhrev) as crhr:
    for line in crhr:
        line = line.strip().split()
        crh_y.append(line[1])

with open(ccoxyes) as coxy:
    for line in coxy:
        line = line.strip().split()
        ccox_x.append(line[1])

with open(ccoxrev) as coxr:
    for line in coxr:
        line = line.strip().split()
        ccox_y.append(line[1])

#plt.scatter(crh_x,crh_y, s = 1)
#plt.savefig("crh")


plt.scatter(ccox_x, ccox_y, s = 1, alpha=0.1)
plt.savefig("ccox")