#!/bin/bash

#SBATCH --time=5:00:00    
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G

PROJ=/projects/bgmp/penhanks/bioinfo/Bi623/Projects/Project-2-Electric-organ-RNA-seq-analysis/Project2_QAA
REPO=$PROJ/Project2_Part3/
DATA=$REPO/Campylomormyrus_ccs.dryad.c59zw3rcj.STAR_2.7.11b/
REF=$REPO/campylomormyrus.fasta
GTF=$REPO/campylomormyrus.gtf

CcoxR1=$PROJ/Project2_Part2/trimmomatic_outs/CcoxCrh_comrhy114_EO_adult_1_R1_pair.fastq.gz
CcoxR2=$PROJ/Project2_Part2/trimmomatic_outs/CcoxCrh_comrhy114_EO_adult_1_R2_pair.fastq.gz
CrhR1=$PROJ/Project2_Part2/trimmomatic_outs/Crh_rhy51_EO_6cm_1_R1_pair.fastq.gz
CrhR2=$PROJ/Project2_Part2/trimmomatic_outs/Crh_rhy51_EO_6cm_1_R2_pair.fastq.gz

/usr/bin/time -v pixi run STAR --runThreadN 8 \
 --runMode genomeGenerate --genomeDir $DATA \
 --genomeFastaFiles $REF --sjdbGTFfile $GTF

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --readFilesIn $CcoxR1 $CcoxR2 \
    --genomeDir $DATA \
    --outFileNamePrefix Ccox_output

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --readFilesIn $CrhR1 $CrhR2 \
    --genomeDir $DATA \
    --outFileNamePrefix Ccrh_output