#!/usr/bin/env bash


# echo "------------------------------"
# #get current time info here
# echo "Current time is `date +%Y-%m-%d-%H%M`"
# echo "------------------------------"

# C-style for Loops in Bash
# for ((initialized ; condition ; increment)); do
# [commands]
# done

for ((i = 0 ; i < (223+1) ; i++)); do
  #echo ${i}
  #echo "try"${i}
  #http://www2.eecs.berkeley.edu/Pubs/TechRpts/2023/EECS-2023-1.pdf
  #echo "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2023/EECS-2023-${i}.pdf"
  #250# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2013/EECS-2013-${i}.pdf"
  #237# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2014/EECS-2014-${i}.pdf"
  #268# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2015/EECS-2015-${i}.pdf"
  #
  #223# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-${i}.pdf"
  #234# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2017/EECS-2017-${i}.pdf"
  #192# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2018/EECS-2018-${i}.pdf"
  #184# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2019/EECS-2019-${i}.pdf"
  #240# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2020/EECS-2020-${i}.pdf"
  #268# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2021/EECS-2021-${i}.pdf"
  #273# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2022/EECS-2022-${i}.pdf"
  #294# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2023/EECS-2023-${i}.pdf"
  #186# wget -c "http://www2.eecs.berkeley.edu/Pubs/TechRpts/2024/EECS-2024-${i}.pdf"
done
