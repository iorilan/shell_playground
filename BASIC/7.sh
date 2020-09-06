# function

echo "=======return value========="
function add(){
local __res=$3
local x=$(($1+$2))
echo $x
eval $__res="'$x'"
}

echo "input 2 numbers"
read a b
add $a $b total
echo "result: $total"


echo "======bak files in folder====="

bak()
{
  FOLDER=$1
  for f in `ls $FOLDER |grep -e .sh$`
  do
    bak_file="${f}_bak"
    if [ -e $bak_file ]
    then
    echo "skip $bak_file"
    else
        echo "back up file $bak_file"
    cp $f $bak_file
    fi
  done
}
bak
