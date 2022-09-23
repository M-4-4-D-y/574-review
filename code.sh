for item in `ls *.pdf *.docx *.mp3`
do
fileName=`echo $item2 |awk -F. '{ print $ 1}'`
fileName2=`echo $item |awk -F. '{ print $ 2 }'`
if [ -d $fileName2 ]
then
echo "Inside IF-Condition Here"
echo $item2
echo $item
rm -rf $item2  $fileName2 $fileName
fi
mkdir $item   $fileName2
cp -r $item $fileName2 $item2
mv $fileName2 ../backup
done
