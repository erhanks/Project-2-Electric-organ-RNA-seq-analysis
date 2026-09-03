#!/bin/bash

#SBATCH --time=8:00:00  
#SBATCH --account=bgmp
#SBATCH --partition=bgmp

pixi run ./graphing_dist.py -r1 Crh_rhy51_EO_6cm_1_R1_pair.txt -r2 Crh_rhy51_EO_6cm_1_R2_pair.txt -d Crh_rhy51_EO_6cm_1_count


pixi run ./graphing_dist.py -r1 CcoxCrh_comrhy114_EO_adult_1_R1_pair.txt -r2 CcoxCrh_comrhy114_EO_adult_1_R2_pair.txt -d CcoxCrh_comrhy114_EO_adult_1_count

