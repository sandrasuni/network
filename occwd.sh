#occurence of a word in a set of files
#set -vx

word=$1
shift
count=0
while [ $# -ne 0 ]
do 
for wd in `cat $1`
do
if [ $wd = $word ]
then
count=`expr $count + 1`
fi
done
shift
done



