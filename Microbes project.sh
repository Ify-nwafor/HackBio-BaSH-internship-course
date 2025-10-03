#Create a folder for the dataset
 mkdir project_dataset
# script to download the dataset
Nano download.sh
#download dataset
bash download.sh -o project_dataset
#create a folder for qc_htmlreports
#perform quality control
fastqc /Ifeoma_Nwafor/project_dataset/*.fastq.gz.* -O qc_htmlreports
multiqc qc_htmlreports
# Trim files
mkdir -p trimmed_reads
bash 
for R1 in project_dataset/*_R1.fastq.gz; do  SAMPLE=(basename “R1”_R1.fastq.gz)
R2=”project_dataset/SAMPLE_R2.fastq.gz”
#trim data
fastp -i “R1” -I “R2” -o “trimmed_reads/{SAMPLE}_R1.trim.fastq.gz” \-O “trimmed_reads/SAMPLE_R2.trim.fastq.gz
-h “trimmed_reads/SAMPLE_R2.trim.fastq.gz/ html 
done 
#genome alignment
#!/bin/bash
SAMPLES=(
  "SRR27013343_Genome_Sequencing_of_Listeria_monocytogenes_SA_outbreak_2017"
  "SRR27013344_Genome_Sequencing_of_Listeria_monocytogenes_SA_outbreak_2017"
  "SRR27013345_Genome_Sequencing_of_Listeria_monocytogenes_SA_outbreak_2017"
  )
bwa index references/reference.fasta
mkdir repaired
mkdir alignment_map
for SAMPLE in "${SAMPLES[@]}"; do
repair.sh in1="trimmed_reads/${SAMPLE}_R1.fastq.gz" in2="trimmed_reads/${SAMPLE}_R2.fastq.gz" out1="repaired/${SAMPLE}_R1_rep.fastq.gz" out2="repaired/${SAMPLE}_R2_rep.fastq.gz" outsingle="repaired/${SAMPLE}_single.fq"
    echo $PWD
    bwa mem -t 1 \
    references/reference.fasta \
    "repaired/${SAMPLE}_R1_rep.fastq.gz" "repaired/${SAMPLE}_R2_rep.fastq.gz" \
  | samtools view -b \
  > "alignment_map/${SAMPLE}.bam"
done

for SAMPLE in "${SAMPLES[@]}"; do

    repair.sh in1="trimmed_reads/${SAMPLE}_R1.fastq.gz" in2="trimmed_reads/${SAMPLE}_R2.fastq.gz" out1="repaired/${SAMPLE}_R1_rep.fastq.gz" out2="repaired/${SAMPLE}_R2_rep.fastq.gz" outsingle="repaired/${SAMPLE}_single.fq"
    echo $PWD
    bwa mem -t 1 \
    references/reference.fasta \
    "repaired/${SAMPLE}_R1_rep.fastq.gz" "repaired/${SAMPLE}_R2_rep.fastq.gz" \
  | samtools view -b \
  > "alignment_map/${SAMPLE}.bam"
done
#genome assembly
mkdir -p assemblies
bash 
spades.py -1 *_R1_rep.fastq.gz -2 *_R2_rep.fastq.gz -o assemblies

#AMR detection using Abricate
mkdir AMR
bash abricate –db res
Common AMR genes detected:
Aac (6)-Aminoglycoside resistance
tetM- tetracycline
fosX- Fosfomycin

#Organism identification
using blast: : Listeria Monocytogenes
#Virulence detection
Listeriolysin
Internalin
ActA
Treatment recommendation
Ampicillin and Gentamicin

