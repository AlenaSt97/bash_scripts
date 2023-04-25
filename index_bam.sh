#!/bin/bash

for BAM in /home/domain/alena_stupnikova/glioma/bam_tenx/LGG_03_ind_bam_rn/*.bam
do
        /mnt/Alexey_lab/samtools-1161/samtools index $BAM $BAM.bai
done
