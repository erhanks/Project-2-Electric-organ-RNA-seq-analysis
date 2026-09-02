#!/bin/bash

#SBATCH --time=8:00:00  
#SBATCH --account=bgmp
#SBATCH --partition=bgmp

SCRIPT=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part1/graph_qual_score.py

PART1=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part1


SRR302_1=$PART1/SRR25630302/SRR25630302_1.fastq
SRR302_2=$PART1/SRR25630302/SRR25630302_2.fastq
LOC302=$PART1/SRR25630302/

SRR376_1=$PART1/SRR25630376/SRR25630376_1.fastq
SRR376_2=$PART1/SRR25630376/SRR25630376_2.fastq
LOC376=$PART1/SRR25630376/

/usr/bin/time -v pixi run $SCRIPT -f $SRR302_1 -d "SRR-302_1_MeanQualScore" -s $LOC302 -l 150 -u
/usr/bin/time -v pixi run $SCRIPT -f $SRR302_2 -d "SRR-302_2_MeanQualScore" -s $LOC302 -l 150 -u
/usr/bin/time -v pixi run $SCRIPT -f $SRR376_1 -d "SRR-376_1_MeanQualScore" -s $LOC376 -l 150 -u
/usr/bin/time -v pixi run $SCRIPT -f $SRR376_2 -d "SRR-376_2_MeanQualScore" -s $LOC376 -l 150 -u