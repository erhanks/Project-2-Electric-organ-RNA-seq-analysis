#!/bin/bash

#SBATCH --time=8:00:00  
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8



zcat Crh_rhy51_EO_6cm_1_R1_pair.fastq.gz| sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > Crh_rhy51_EO_6cm_1_R1_pair.txt

zcat Crh_rhy51_EO_6cm_1_R1_unpair.fastq.gz|sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > Crh_rhy51_EO_6cm_1_R1_unpair.txt

zcat Crh_rhy51_EO_6cm_1_R2_pair.fastq.gz|sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 >  Crh_rhy51_EO_6cm_1_R2_pair.txt

zcat Crh_rhy51_EO_6cm_1_R2_unpair.fastq.gz |sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > Crh_rhy51_EO_6cm_1_R2_unpair.txt


zcat CcoxCrh_comrhy114_EO_adult_1_R1_pair.fastq.gz|sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > CcoxCrh_comrhy114_EO_adult_1_R1_pair.txt

zcat CcoxCrh_comrhy114_EO_adult_1_R1_unpair.fastq.gz|sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > CcoxCrh_comrhy114_EO_adult_1_R1_unpair.txt

zcat CcoxCrh_comrhy114_EO_adult_1_R2_pair.fastq.gz|sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > CcoxCrh_comrhy114_EO_adult_1_R2_pair.txt

zcat CcoxCrh_comrhy114_EO_adult_1_R2_unpair.fastq.gz|sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > CcoxCrh_comrhy114_EO_adult_1_R2_unpair.txt