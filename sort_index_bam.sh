#!/bin/bash

for BAM in /home/domain/alena_stupnikova/glioma/bam_tenx/LGG_03_indiv_bam/*.bam
do
        fname=$(basename -- "$BAM")
        name="${fname%.*}"
        /mnt/Alexey_lab/samtools-1161/samtools sort $BAM -o /home/domain/alena_stupnikova/glioma/bam_tenx/LGG_03_ind_bam_sorted/$name.sorted.bam
        /mnt/Alexey_lab/samtools-1161/samtools index /home/domain/alena_stupnikova/glioma/bam_tenx/LGG_03_ind_bam_sorted/$name.sorted.bam /home/domain/alena_stupnikova/glioma/bam_tenx/LGG_03_ind_bam_sorted/$name.sorted.bam.bai
done
