for input_file in /gatk/my_data/glioma/bam_tenx/LGG_03_ind_bam_sorted/*.bam
do
        fname=$(basename -- "$input_file")
        barcode="${fname%.sorted.bam}"
	gatk AddOrReplaceReadGroups -I $input_file -O /gatk/my_data/glioma/bam_tenx/LGG_03_ind_bam_rn/$fname -LB 0.1 -PL ILLUMINA -PU $barcode:0:1:H7CGCDSX2:3 -SM $barcode -ID $barcode:0:1:H7CGCDSX2:3
done
