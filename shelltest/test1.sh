#/bin/bash
Max_CPU=0
Avg_CPU=0
Total_Time=1

Process=$1
Interval=$2
if [ $# -ne 2 ];then
      echo "Usage:$0 ProcessName Interval"
      exit
fi
   LogFile="Per.txt"
   echo "'data'">$LogFile
while sleep $Interval
 do 
    top -d 1 -n 1|grep $Process|grep -v grep|awk '{print $9"\t"10}'>>$LogFile
done
