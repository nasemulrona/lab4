#!/bin/bash
max=25
for ((i = 0; i < max; i++)); do
b[i]=0
f[i]=0
frag[i]=0
bf[i]=0
ff[i]=0
done
# Input number of blocks and files
read -p "Enter the number of blocks: " nb
read -p "Enter the number of files: " nf
# Input sizes of blocks
echo "Enter the size of the blocks:"
for ((i = 1; i <= nb; i++)); do
read -p "Block $i: " b[$i]
done
# Input sizes of files
echo "Enter the size of the files:"
for ((i = 1; i <= nf; i++)); do
read -p "File $i: " f[$i]
done
# Main
for ((i = 1; i <= nf; i++)); do
for ((j = 1; j <= nb; j++)); do
if [ ${bf[j]} -ne 1 ] && [ ${b[j]} -ge ${f[i]} ];
then
ff[i]=$j
frag[i]=$((b[j] - f[i]))
bf[$j]=1
break
fi
done
done
echo -e "\nFile_no \tFile_size \tBlock_no \tBlock_size\tFragment"
for ((i = 1; i <= nf; i++)); do
echo -e"$i\t\t${f[i]}\t\t${ff[i]}\t\t${b[${ff[i]}]}\t\t${frag[i]}"
done
