#!/bin/bash  
#shell脚本排序之合并排序  
a=(1 3 5 7 9)  
b=(2 4 6 8 10 12 14)  
c=  
n=5  
m=7  
  
i=0  
j=0  
k=0  
while [ $i -lt $n -a $j -lt $m ];do  
    if test ${a[$i]} -gt ${b[$j]};then  
        c[$k]=${b[$j]}  
        j=$(($j+1))  
        k=$(($k+1))  
    else  
        c[$k]=${a[$i]}  
        i=$(($i+1))  
        k=$(($k+1))  
    fi  
done  
#echo $i  
#echo $j  
while [ $i -lt $n ];do  
        c[$k]=${a[$i]}  
        i=$(($i+1))  
        k=$(($k+1))  
done  
#echo $j  
#echo $m  
while [ $j -lt $m ];do  
        c[$k]=${b[$j]}  
        j=$(($j+1))  
        k=$(($k+1))  
done  
for((i=0;i<$k;i++))  
{  
    echo -n ${c[$i]} " "  
}  
echo 
