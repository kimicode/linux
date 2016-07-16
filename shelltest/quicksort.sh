#!/bin/bash  
#shell脚本编程之快速排序的实现(以最右边为元点的思想)  
a=(8 5 10 3 2 93 4 1 2 3 40 9 61 8 6 29)  
#a=(0  0  0  0  1  2  3  3  4  4  8  28  30495  921  43716)  
temp=  
buff=  
  
#交换函数  
swap()  
{  
    buff=${a[$1]}  
    a[$1]=${a[$2]}  
    a[$2]=$buff  
}  
  
fun()  
{  
    i=$(($1-1))  
    j=$1  
    temp=${a[$2]}  
    if test $1 -ge $2 ;then  
        return 2   
    fi  
        while [ $j -le $2 ];do  
            [ $j -lt $2 ] && while [[ ${a[$j]} -gt $temp ]] ;do   
             j=$(($j+1))  
            done  
            i=$(($i+1))  
            swap $i $j    
            j=$(($j+1))  
        done  
     fun 0 $(($i-1))  
     fun $(($i+2)) $2  
}  
fun 0 15  
for((i=0;i<16;i++))  
{  
    echo -n ${a[$i]} " "  
}  
echo  
exit 0  
