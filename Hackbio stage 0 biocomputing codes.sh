ifyjnwafor@cloudshell:~$ echo "Ifeoma" #Print name
ifyjnwafor@cloudshell:~$ mkdir Ifeoma #Create a folder titled your name
ifyjnwafor@cloudshell:~$ mkdir biocomputing && cd biocomputing #create biocomputing folder and change directory
ifyjnwafor@cloudshell:~/biocomputing$ wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk #download files
ifyjnwafor@cloudshell:~/biocomputing$ mv *.fna ../Ifeoma/ #move the fna file to Ifeoma
ifyjnwafor@cloudshell:~/biocomputing$ rm *.gbk.* #remove duplicate gbk file
ifyjnwafor@cloudshell:~/Ifeoma$ grep -i "tatatata" wildtype.fna #Confirm if .fna file is wildtype
ifyjnwafor@cloudshell:~/Ifeoma$ grep -i "tatatata" wildtype.fna > newwildtype #if mutant, print all matching files into a new file
ifyjnwafor@cloudshell:~/biocomputing$ wc -l wildtype.gbk  #count number of lines in the gbk file
ifyjnwafor@cloudshell:~/biocomputing$ grep "LOCUS" wildtype.gbk | awk '{print $3}' # Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)
ifyjnwafor@cloudshell:~/biocomputing$ grep "SOURCE" wildtype.gbk | awk '{print $2,$3}' #Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)
ifyjnwafor@cloudshell:~/biocomputing$ grep '\gene=' wildtype.gbk #list all the genes
ifyjnwafor@cloudshell:~/biocomputing$ clear #clear the terminal
ifyjnwafor@cloudshell:~/biocomputing$ history  #list all commands used today
ifyjnwafor@cloudshell:~/biocomputing/Ifeoma/ ls #list files in the 2 folders
ifyjnwafor@cloudshell:~$ conda activate #activate base conda environment
(base) ifyjnwafor@cloudshell:~$ conda create --name 'funtools' #create funtools environment
(base) ifyjnwafor@cloudshell:~$ conda activate funtools #activate funtools environment
(funtools) ifyjnwafor@cloudshell:~$ sudo apt-get install figlet #install figlet on conda
(funtools) ifyjnwafor@cloudshell:~$ figlet Ifeoma #Run figlet your name
(funtools) ifyjnwafor@cloudshell:~$ conda install bwa #install bwa
(funtools) ifyjnwafor@cloudshell:~$ conda install blast #install blast
(funtools) ifyjnwafor@cloudshell:~$ conda install -c samtools bedtools spades bcftools fastp multiqc #install tools
