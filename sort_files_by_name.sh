input_file="./LGG_03_barcodes/cl0_bcs_list_p2.txt"

while read -r line
do
	find ./LGG_03_ind_bam_sorted/ -name "*$line*" -exec mv -t ./LGG_03_cl0_p2 {} +
done < "$input_file"
