# Project 2
### Author: Pen Hanks

### Date created: 8/31/26

### Description :


# Overview
updated 8/31/26
## Part 1
### Files 
I was assigned SRR25630302 and SRR25630376, and I downloaded them using FastQC with prefetch and then fasterq-dump

Associated information, including graphs, are in folders of the same name in Project2_QAA/Project2_Part1.

### Graphing
I don't know how I ran my demultiplexing graphing script, but it was giving me a matplotlib error, so I copied the script over and renamed it to graph_qual_score.py. Resulting graphs are included in the Project2_QAA/Project2_Part1/SRR25630302 and roject2_QAA/Project2_Part1/SRR25630376 folders. 

### /usr/bin/time
ran with demux_run.sh

- SRR-302_1
    - Time
        - User time (seconds): 331.80
        - System time (seconds):  3.51
        - Elapsed (wall clock) time (h:mm:ss or m:ss): 5:36.79
    - CPU
        - Percent of CPU this job got: 99%
    - Memory
        - Maximum resident set size (kbytes): 68964
- SRR-302_2
    - Time
        - User time (seconds): 331.21
        - System time (seconds): 3.61
        - Elapsed (wall clock) time (h:mm:ss or m:ss):  5:39.02
    - CPU
        - Percent of CPU this job got: 98%
    - Memory
        - Maximum resident set size (kbytes): 69492
- SRR-376_1
    - Time
        - User time (seconds): 259.75
        - System time (seconds): 2.80
        - Elapsed (wall clock) time (h:mm:ss or m:ss): 4:25.56
    - CPU
        - Percent of CPU this job got: 98%
    - Memory
        - Maximum resident set size (kbytes): 69432
- SRR-376_2
    - Time
        - User time (seconds): 269.98
        - System time (seconds): 2.74
        - Elapsed (wall clock) time (h:mm:ss or m:ss):  4:34.08
    - CPU
        - Percent of CPU this job got: 99%
    - Memory
        - Maximum resident set size (kbytes): 69272
## Part 2
## Part 3
## Part 4
## Part 5
# Log
## 9/2/26
### To do
I could probably complete the overview right now, but I dont want to add usr bin time stuff, so I'll do it later

### renaming
I DIDN'T REALIZE I HAD TO RENAME THE FILES oops

rename coming in clutch: rename oldtxt newtxt oldtxt*

- Ex: rename SRR25630302_ Crh_rhy51_EO_6cm_1_R SRR25630302_*

fixed the part 1 folders, cutadapt outputs, and trimmomatic outs, distribution.sh, trimmomatic_run.sh, and cutadapt_run.sh
- Not the way its notated in the $ stuff, but changed everything that would make it not run

#### Replacements for easy copy pasting
- 376 is the bigger number and has the longer name

SRR25630302 = Crh_rhy51_EO_6cm_1  
SRR25630376 = CcoxCrh_comrhy114_EO_adult_1

SRR25630302_1 = Crh_rhy51_EO_6cm_1_R1
SRR25630302_2 = Crh_rhy51_EO_6cm_1_R2

SRR25630376_1 = CcoxCrh_comrhy114_EO_adult_1_R1
SRR25630376_2 = CcoxCrh_comrhy114_EO_adult_1_R2

###
zcat Crh_rhy51_EO_6cm_1_R1_pair.fastq.gz| sed -n '2~4p' | awk '{print length($0)}' | sort -n |uniq -c |sort -n -k 2 > Crh_rhy51_EO_6cm_1_R1_pair.txt

## 9/1/26
### File locations and answer doc
Created Project2_Part1_answers.txt to store answers to questions. Wish it was a markdown file but alas.

Had to rerun my script bc I forgot the -v in usr/bin/time (v for verbose aka more human readable). And then ran it again to make image files more specific. I really need to get better at naming files to be more helpful to me later


### Graphing
I wasn't waiting long enough for matplotlib to install i think? I removed all my pixi files and then redid pixi init and that finally worked to add matplotlib. Im now running the script and it's pending.

### Usr/bin/time 
Ran and added usr bin time info to the lab notebook, and so was able to comment on it in my answers doc.

## 8/31/26
### Graphing
I dont know what to do with the graphing partttt and it was due yesterdayyy

### File organization
Created lab notebook, reformatted Project markdown files, began to organize files as specified in Project markdown files.

## 8/28/26? I think
### In class bash commands

I only included the successful commands, but it was copy pasted from my history. 

  899  pixi init Project2_QAA
  902  cd Project2_QAA
  903  pixi add fastqc cutadapt trimmomatic
  904  cat /projects/bgmp/shared/Bi623/Project2/Project2_part1_3_data_assignments.txt
  905  pixi add SRA-tools
  907  pixi run prefetch SRR25630302 SRR25630376
  910  pixi run fasterq-dump SRR25630376
  911  pixi run fasterq-dump SRR25630302