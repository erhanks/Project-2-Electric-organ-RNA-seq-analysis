#!/bin/bash

#SBATCH --time=5:00:00    
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G

SAM=/projects/bgmp/penhanks/bioinfo/Bi621/PS/erhanks-Bi621-PS8/sam_parser.py
GFF=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/campylomormyrus.gff

CRH=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Ccrh_outputAligned.out.sam
CCOX=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA/Project2_Part3/Ccox_outputAligned.out.sam

#pixi run $SAM -i $CRH
#pixi run $SAM -i $CCOX

/usr/bin/time -v pixi run htseq-count --stranded=yes -i Parent $CRH $GFF > Crh_rhy51_EO_6cm_1_htseqcounts_yesstranded.txt
/usr/bin/time -v pixi run htseq-count --stranded=yes -i Parent $CCOX $GFF > CcoxCrh_comrhy114_EO_adult_1_htseqcounts_yesstranded.txt

/usr/bin/time -v pixi run htseq-count --stranded=reverse -i Parent $CRH $GFF > Crh_rhy51_EO_6cm_1_htseqcounts_revstranded.txt
/usr/bin/time -v pixi run htseq-count --stranded=reverse -i Parent $CCOX $GFF > CcoxCrh_comrhy114_EO_adult_1_htseqcounts_revstranded.txt