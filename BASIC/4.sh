# loop and if else
echo "======for i=0  i<20 i++===="
for ((i=0; i<20; i++))
do
 echo "$i"
done

echo "=======for i in seq 1 10 ====="
for i in $(seq 1 10)  
do   
echo $(expr $i \* 3 + 1)
done   

echo "========for i in 1..10 =========="
for i in {1..10}  
do  
echo $(expr $i \* 3 + 1)
done 

echo "======for i in ls========"
for i in `ls`
do   
echo "found file : $i"
done 

echo "====for file in ls .sh===="
for file in $(ls *.sh)
do  
echo "found sh file : $file"
done  

echo "====for i in string==="
list="aa bb cc 111"
for i in $list
do  
echo "$i"
done 

echo "====for i in list==="
declare -a arr=("element1" "element2" "element3")
for i in "${arr[@]}"
do
   echo "array element: $i"
done

echo "=========while loop============="
myinput=""
while [ "$myinput" != "q" ]
do 
 echo "press q to exit"
 read myinput
 echo "your input : $myinput"
done 

