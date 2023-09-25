# rapid-virulence
A pipeline for end to end bacterial genome assembly, annotation and AMR analysis.

## Rationale
Antimicrobial Resistance is an evolutionary defence mechanism of the microbes against the antibiotics insergence. The antibiotics hinders or stop the growth of microbial cell proliferation. The evolutionary sellection process in the same stage results in the formation of new microbial varients that shows resistance towards the insergent antibiotics. Antibiotics resistance is currently a global scale problem causing 1-2 millions deaths each year. Accordimg to a United Nations report, the number could increase to 10 millions till the year 2050.

## Introduction
**rapid-virulence** is a bash based ngs piepline, developed to automate the process of finding the anti-microbial resistance genes from the reads of whole genome sequences. 

>* Input: Raw sequence reads in fastq format.

>* Output: .csv file containg the AMR genes.

>* Time: Depending on the system, an average of "Less then 2 mins".

## Dependencies
>* Linux-64
>* Python 3.x
>* Conda 23.3.1
## Installation

**Step 1:** 

Download the follwoing files from the project repository and save inside a folder named as "project-rapid-virulance":
```
1. envirnoment.txt
2. pipeline.sh
```

**Step 2:**

Open the linux terminal and download the miniconda by following these simple steps:


```
mkdir -p ~/miniconda3
```
```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
```
```
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
```
```
~/miniconda3/bin/conda init bash
```
```
~/miniconda3/bin/conda init zsh
```

**Step 3:**

Once the miniconda is installed, you can setup the pipeline by typing the follwoing command in the linux terminal.


```
conda create --name <env> --file *path_to_file*/envirnoment.txt
```

**Step 4:**

Enter the newly created envirnment from the follwoing command:

```
conda activate env_name
```
**Step 5:**

Once inside the envirnment type the following commands to initiate the pipeline:
```
chmod 755 pipeline.sh
```

```
./pipeline.sh
```

**Note:** Kindly make sure you are inside the directory "project-rapid-virulance".

## Usage
**Step 1:**

Kindly make sure about the specified guidlines:

```
1. You are present in a project folder.
2. Project folder contains the fastq.gz format of read file/s.
3. Rename the read files as reads.fastq.gz (single end); reads1fastq.gz and reads2.fastq.gz (paired end).
4. Reads are clean.
5. Paths are set according to your system.
```
**Step 2:**

Type of Reads (1 or 2):
1. Single End Read
2. Paired End Reads^

```
Enter your Choice in the Terminal: "1 or 2"
```

After a brief processings, the results will be saved in the project folder as a .csv file containg the antimicrobial genes.
  
## Version History
* 0.1
  * Initial Release
## License
This project is licensed under the  MIT license - see the LICENSE.md file for details
## Authors
* Ahsan Raza
  * aysanraza@gmail.com
  * [Linkedin](https://www.linkedin.com/in/ahsan-raza-0510b1128/)

