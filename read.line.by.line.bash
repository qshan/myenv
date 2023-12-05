#!/bin/bash

#usage
#$ read.line.by.line FileName

inputfile=$1
echo "get input file: ${inputfile}"

while IFS= read -r line
do
  echo ${line}

  #export input_argument_file_name="`ls ${input_argument_file} | sed -r 's/(.*)\/(.*)/\2/g'`"
  #export input_argument_path_name="`ls ${input_argument_file} | sed -r 's/(.*)\/(.*)/\1/g'`"

  echo "filename is: " `echo ${line} | sed -r 's/(.*)\/(.*)/\2/g'`
  echo "filepath is: " `echo ${line} | sed -r 's/(.*)\/(.*)/\1/g'`
  #ls ${line}
done < ${inputfile}
