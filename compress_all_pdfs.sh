#!/bin/bash
folder=${PWD}
mkdir "${folder}"/Comp
shopt -s extglob nullglob
for file in "${folder}"/*@(pdf|PDF); do
        if [ -f "${file}" ]; then
                outputfile=compressed_$(basename "${file}")
                gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -sOutputFile="${folder}"/Comp/"${outputfile}" "${file}"
        fi
done
exit
