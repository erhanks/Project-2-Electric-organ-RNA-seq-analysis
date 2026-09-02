#!/bin/bash

#SBATCH --time=8:00:00  
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=6

A1=AGATCGGAAGAGCACACGTCTGAACTCCAGTCA
A2=AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT


/usr/bin/time -v pixi run cutadapt -a 