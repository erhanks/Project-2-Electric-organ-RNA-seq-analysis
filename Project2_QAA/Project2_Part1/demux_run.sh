#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp

SCRIPT=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part1/graph_qual_score.py

PART1=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part1


SRR302=$PART1/SRR25630302/SRR25630302_1.fastq
LOC302=$PART1/SRR25630302/

SRR376=$PART1/SRR25630302/SRR25630302_2.fastq
LOC376=$PART1/SRR25630302/

/usr/bin/time pixi run $SCRIPT -f $SRR302 -d "SRR-302" -s $LOC302 -l 150 -u
/usr/bin/time pixi run $SCRIPT -f $SRR376 -d "SRR-376" -s $LOC376 -l 150 -u


