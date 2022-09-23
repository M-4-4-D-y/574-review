a=(10 30 44 44 69 12 11 100)

max=0
for v in ${a[@]};
 do
    if (( $v > $max )); then max=$v;
     fi; 
done
echo $max


