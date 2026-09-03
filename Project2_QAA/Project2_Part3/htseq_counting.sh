#!/bin/bash

#SBATCH --time=5:00:00    
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G

SAM=/projects/bgmp/penhanks/bioinfo/Bi621/PS/erhanks-Bi621-PS8/sam_parser.py
GTF=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/campylomormyrus.gtf

CRH=/
CCOX=/
pixi run $SAM -i $CRH
pixi run $SAM -i $CCOX

pixi run htseq-count --stranded=yes $CRH $GTF
pixi run htseq-count --stranded=yes $CCOX $GTF

pixi run htseq-count --stranded=reverse $CRH $GTF
pixi run htseq-count --stranded=reverse $CCOX $GTF