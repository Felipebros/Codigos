## Repartir arquivos linux terminal em bytes ou linhas

# em linhas
split -l 1000 exporta_clientes\ 30MB.txt div_

# em bytes

# split -b 1G arquivo-original prefixo-das-partes
split -b 1G exporta_clientes\ 30MB.txt div_

# juntar

# cat prefixo-das-partes* > arquivo-original
cat div_* > original.txt
