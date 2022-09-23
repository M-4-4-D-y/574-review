declare -a oddNumber
for ((i=1;i<=30;i++))
do
if [ $((i%2)) -ne 0 ]
then oddNumber[$((i-1))]=$i
fi 
done
echo ${oddNumber[@]}

for prime in ${oddNumber[@]}
do 
for((i=2; i<=$n/2; i++))
do
  ans=$(( n%i ))
  if [ $ans -eq 0 ]
  then
    echo "$n is not a prime number."
    exit 0
  fi
done
echo "$n is a prime number."

