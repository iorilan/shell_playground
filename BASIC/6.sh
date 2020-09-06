# get input arguments 

echo "----------------------"
echo "total : $# parameters"
echo "path: $0"
echo "2nd parameter : $2"
echo "All parameters : $@"


#$ ./6.sh 1 2 3
#total : 3 parameters
#path: ./6.sh
#2nd parameter : 2
#All parameters : 1 2 3

echo "------------------------"
ifs1="$IFS"
IFS=:
echo "input 4 parameter separate by ':'"
read a b c d
IFS=$ifs1
echo "parameters: $a,$b,$c,$d"

echo "--------------------------"
echo "input parameter again, separate by ,"
IFS=', ' read -r -a array 
for element in "${array[@]}"
do
    echo "$element"
done

