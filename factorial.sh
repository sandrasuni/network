#using factorial function read the value of n and r and find the value of nCr.
#set -vx

if [ $# -ne 1 ]
then 
echo "syntax is <$0> <number>"
exit 1
fi

#function to find factorial
fact()
{
x=$1
i=1
f=1
while [ $i -le $x ]
do
f=`expr $f \* $i`
i=`expr $i + 1`
done
#echo "$n != $f"
return $f
}


#calling function

echo -n "enter value for 'n' : "
read n
echo -n "enter value for 'r' : "
read r
fact $n
factn=$?
fact $r
factr=$? 
nmr=`expr $n - $r`
fact $nmr
factnmr=$?
rnmr=`expr $factr \* $factnmr`
ncr=`expr $factn / $rnmr`
echo "$n C $r =$ncr " 
