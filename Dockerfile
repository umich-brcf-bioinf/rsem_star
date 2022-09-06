FROM umichbfxcore/rsem_star:0.1.1

# Modify STAR params for turkey 
RUN perl -pe 's/^(.*" --runThreadN .*)/" --limitGenomeGenerateRAM 132500000000 " \.\n$1/' -i /opt/conda/envs/rsem_star/bin/rsem-prepare-reference
