#!/usr/bin/env bash


# echo "------------------------------"
# #get current time info here
# echo "Current time is `date +%Y-%m-%d-%H%M`"
# echo "------------------------------"

# C-style for Loops in Bash
# for ((initialized ; condition ; increment)); do
# [commands]
# done
tempArray[2000]=1126
tempArray[2001]=1169
tempArray[2002]=1220
tempArray[2003]=1299
tempArray[2004]=1369
#
tempArray[2005]=31
tempArray[2006]=195
tempArray[2007]=180
tempArray[2008]=187
tempArray[2009]=192
tempArray[2010]=181
tempArray[2011]=163
tempArray[2012]=273
tempArray[2013]=250
tempArray[2014]=237
tempArray[2015]=268
#for ((j = 2004 ; j < (2004+1) ; j++)); do
for ((j = 2005 ; j < (2015+1) ; j++)); do
#  for ((i = 1300 ; i < (tempArray[j]+1) ; i++)); do
  for ((i = 1 ; i < (tempArray[j]+1) ; i++)); do
    #echo ${i}
    #echo "try"${i}
    #if [ j -lt 2004 ]; then
    if [ ${j} -gt 2004 ]; then
      # echo "http://www2.eecs.berkeley.edu/Pubs/TechRpts/${j}/EECS-${j}-${i}.pdf"
      wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/${j}/EECS-${j}-${i}.pdf"
    else
      # echo "http://www2.eecs.berkeley.edu/Pubs/TechRpts/${j}/CSD-04-${i}.pdf"
      wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/${j}/CSD-04-${i}.pdf"
      # http://www2.eecs.berkeley.edu/Pubs/TechRpts/2004/ERL-04-50.pdf
      # echo "http://www2.eecs.berkeley.edu/Pubs/TechRpts/${j}/ERL-04-${i}.pdf"
    fi
  done

  echo "==================================================================="
done

#todo# for ((i = 0 ; i < (1+1) ; i++)); do
#todo#   #echo ${i}
#todo#   #echo "try"${i}
#todo#   #http://www2.eecs.berkeley.edu/Pubs/TechRpts/2023/EECS-2023-1.pdf
#todo#   #echo "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2023/EECS-2023-${i}.pdf"
#todo#   #250# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2013/EECS-2013-${i}.pdf"
#todo#   #237# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2014/EECS-2014-${i}.pdf"
#todo#   #268# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2015/EECS-2015-${i}.pdf"
#todo#   #
#todo#   #223# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-${i}.pdf"
#todo#   #234# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2017/EECS-2017-${i}.pdf"
#todo#   #192# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2018/EECS-2018-${i}.pdf"
#todo#   #184# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2019/EECS-2019-${i}.pdf"
#todo#   #240# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2020/EECS-2020-${i}.pdf"
#todo#   #268# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2021/EECS-2021-${i}.pdf"
#todo#   #273# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2022/EECS-2022-${i}.pdf"
#todo#   #294# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2023/EECS-2023-${i}.pdf"
#todo#   #186# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2024/EECS-2024-${i}.pdf"
#todo# done
