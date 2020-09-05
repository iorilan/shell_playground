#if else case 

echo "======compare integer===="
for ((i=0; i<20; i++))
do
if (($i % 2 == 0 && $i > 2)) 
then
 echo "[%2] $i"
elif (($i % 3 == 0 && $i>3))
then 
 echo "[%3] $i"
elif (($i % 5 == 0))
then 
 echo "[%5] $i"
else 
 echo "others $i"
fi
done

echo "=============compare string=============="
echo "input a string"
read value 
x="${value:0:1}" #take first char
echo "first char is $x"
if [[ "$x" < "a" ]];then
echo "$x<a"
elif [[ "$x" < "z" ]];then
echo "a<$x<z"
else
echo "$x>z"
fi


echo "======================case==================="
echo "check date or time, q to exit"
while :
do
  read CMD
  case $CMD in
	date)
		echo `date +%Y%m%d`
		;;
	time)
		echo `date +%H%M%S`
		;;
	q)
		echo "exit program"
		break
		;;
	*)
		echo "invalid command"
		;;
  esac
done

