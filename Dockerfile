FROM umichbfxcore/rsem_star:0.1.1

# Modify STAR params
RUN perl -pe 's/^(.*" --runThreadN .*)/" --limitOutSJcollapsed 4000000 " \.\n$1/' -i /opt/conda/envs/rsem_star/bin/rsem-calculate-expression
