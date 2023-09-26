echo ""
echo "=================Welcome to rapid-virulance: Denovo Bacterical Genome Assembly, Annotation and AMR Pipeline=================" 
echo ""
echo ""
echo "Kindly make sure about the specified guidlines:"
echo ""
echo "1- Project envirnment is installed and activated
2- You are present in a project folder
3- Project folder contains the fastq.gz format of read file/s
4- Rename the read files as reads.fastq.gz (single end); reads1fastq.gz and reads2.fastq.gz (paired end).
5- Reads are clean.
6- Paths are set according to your system"
echo ""
echo ""
read -p "Type of Reads (1 or 2):
1- Single End Read
2- Paired End Reads" choice
echo ""

if [ "$choice" == 1 ]; then
  unicycler -s reads.fastq.gz -o results
else
  unicycler -s read1.fastq.gz read2.fastq.gz -o results
fi

prokka project_folder/results/assembly.fasta
abricate project_folder/results/assembly.fasta > abricate.csv

echo ""
echo "Program Ended"
echo ""
