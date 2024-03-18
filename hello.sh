
h=`date +%H`
echo $hr
user=`whoami`
echo $user
if [ $# -ne 0 ]
then
echo "syntax is <$0>"
fi
 
if [ $h -gt 0 -a $h -le 12 ]
then
echo "hello, good morning $user"
elif [ $h -gt 12 -a $h -le 16 ]
then
echo "hello, good afternoon $user"
elif [ $h -gt 16  $h -le 20 ]
then
echo "hello, good evening $user"
else
echo "hello, good night $user"
fi
