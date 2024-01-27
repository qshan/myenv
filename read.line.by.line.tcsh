#!/usr/bin/env tcsh

#usage
#$ read.line.by.line FileName

setenv inputfile $1
#echo "get input file: ${inputfile}"

foreach line (`awk '{print}' ${inputfile}`)
  echo ${line}

  #export input_argument_file_name="`ls ${input_argument_file} | sed -r 's/(.*)\/(.*)/\2/g'`"
  #export input_argument_path_name="`ls ${input_argument_file} | sed -r 's/(.*)\/(.*)/\1/g'`"

  ##check contents of file
  # echo "filename is: " `echo ${line} | sed -r 's/(.*)\/(.*)/\2/g'`
  # echo "filepath is: " `echo ${line} | sed -r 's/(.*)\/(.*)/\1/g'`
  ##ls ${line}

  ##todo##
  set newline = `echo ${line} | sed -r 's/(.*)\/temp_dir\/(.*)/\1\/temp_dir.try\/\2/g'`
  echo "newline is : " $newline
  #set lineTargetName = `echo ${line} | sed -r 's/(.*)\/(.*)/\2/g'`
  set lineTargetPath = `echo ${newline} | sed -r 's/(.*)\/(.*)/\1/g'`
  echo "lineTargetPath is : "$lineTargetPath

  #if the folder is not exist, create it
  if ( ! -d "$lineTargetPath" ) then
    echo "there is no lineTargetPath"
    mkdir -p $lineTargetPath
    ln ${line} $lineTargetPath
  else
    ls $lineTargetPath
  endif

  #example to rename file: ./mainline/xxxxxxx -> ./mainline.try/xxxxxxx
  # echo "[]" `echo ${line} | sed -r 's/(.*)\/mainline\/(.*)/\1\/mainline.try\/\2/g'`
  # ln ${line} `echo ${line} | sed -r 's/(.*)\/mainline\/(.*)/\1\/mainline.try\/\2/g'`
end
