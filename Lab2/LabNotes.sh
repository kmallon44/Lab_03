# shell script to make a loop to automate quality control and alignment of multiple fastq files
# echo just prints within the terminal 
for FASTQ in *fastq*
do
	OUT=${FASTQ//.fastq.gz/_mapped}
	LOG=${FASTQ//.fastq.gz/_mapped.log}
	echo "fastqc $FASTQ"
	echo "kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o $OUT --single -l 250 -s 30 $FASTQ -t 8 &> $LOG"
	echo "done mapping reads for $FASTQ"
done
# will print this in terminal
fastqc SRR8668755_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668755_10K_subsample_mapped --single -l 250 -s 30 SRR8668755_10K_subsample.fastq.gz -t 8 &> SRR8668755_10K_subsample_mapped.log
fastqc SRR8668756_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668756_10K_subsample_mapped --single -l 250 -s 30 SRR8668756_10K_subsample.fastq.gz -t 8 &> SRR8668756_10K_subsample_mapped.log
fastqc SRR8668757_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668757_10K_subsample_mapped --single -l 250 -s 30 SRR8668757_10K_subsample.fastq.gz -t 8 &> SRR8668757_10K_subsample_mapped.log
fastqc SRR8668758_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668758_10K_subsample_mapped --single -l 250 -s 30 SRR8668758_10K_subsample.fastq.gz -t 8 &> SRR8668758_10K_subsample_mapped.log
fastqc SRR8668759_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668759_10K_subsample_mapped --single -l 250 -s 30 SRR8668759_10K_subsample.fastq.gz -t 8 &> SRR8668759_10K_subsample_mapped.log
fastqc SRR8668769_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668769_10K_subsample_mapped --single -l 250 -s 30 SRR8668769_10K_subsample.fastq.gz -t 8 &> SRR8668769_10K_subsample_mapped.log
fastqc SRR8668771_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668771_10K_subsample_mapped --single -l 250 -s 30 SRR8668771_10K_subsample.fastq.gz -t 8 &> SRR8668771_10K_subsample_mapped.log
fastqc SRR8668772_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668772_10K_subsample_mapped --single -l 250 -s 30 SRR8668772_10K_subsample.fastq.gz -t 8 &> SRR8668772_10K_subsample_mapped.log
fastqc SRR8668773_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668773_10K_subsample_mapped --single -l 250 -s 30 SRR8668773_10K_subsample.fastq.gz -t 8 &> SRR8668773_10K_subsample_mapped.log
fastqc SRR8668774_10K_subsample.fastq.gz
kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o SRR8668774_10K_subsample_mapped --single -l 250 -s 30 SRR8668774_10K_subsample.fastq.gz -t 8 &> SRR8668774_10K_subsample_mapped.log
# then to actually run the code, get rid of eacho and fix the spacces as necessary 
# parse error near 'mapping' indicates extra space
for FASTQ in *fastq*
do
        OUT=${FASTQ//.fastq.gz/_mapped}
        LOG=${FASTQ//.fastq.gz/_mapped.log}
        fastqc $FASTQ
        kallisto quant -i Homo_sapiens.GRCh38.cdna.all.index -o $OUT --single -l 250 -s 30 $FASTQ -t 8 &> $LOG done mapping reads for $FASTQ       
done
# output will look like this for each file
application/gzip
Started analysis of SRR8668755_10K_subsample.fastq.gz
Approx 10% complete for SRR8668755_10K_subsample.fastq.gz
Approx 20% complete for SRR8668755_10K_subsample.fastq.gz
Approx 30% complete for SRR8668755_10K_subsample.fastq.gz
Approx 40% complete for SRR8668755_10K_subsample.fastq.gz
Approx 50% complete for SRR8668755_10K_subsample.fastq.gz
Approx 60% complete for SRR8668755_10K_subsample.fastq.gz
Approx 70% complete for SRR8668755_10K_subsample.fastq.gz
Approx 80% complete for SRR8668755_10K_subsample.fastq.gz
Approx 90% complete for SRR8668755_10K_subsample.fastq.gz
Approx 100% complete for SRR8668755_10K_subsample.fastq.gz
Analysis complete for SRR8668755_10K_subsample.fastq.gz
# general for loop structure // indicates find and / indicates replace: for i in X / do blah blah blah / done 
#use multiqc at the end of the loop/outside of the for loop
multiqc -d .
# ideally want to have an annoted shell script along with your code instead of copy and pasting just code into terminal
# to directly run a shell script in the terminal, first have to change permissions on the terminal so you have access to it
# ensure the shell scrupt is in the directory/file you are in 
#type in "chmod 777 readMapping.sh" (without "") 777 to read/write/execute according to bash tutorial
chmod 777 readMapping.sh
# then type in './readMapping.sh' without ""
./readMapping.sh
# type ls -l to see permissions for each file
ls -l
# may need to type in sudo chmod u+x readMapping.sh (insert the shell file here) only changes to that file
sudo chmod u+x readMapping.sh 
# - will be a file and d will be a directory