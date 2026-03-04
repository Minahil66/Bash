#!/usr/bin/
square_of_sum(){
num=$1
for((i=1;i<=$num;i++));do
sum1=$((sum1+i))
done
final=$((sum1*sum1))
echo $final
}
sum_of_squares(){
sum=0
num=$1
for((i=1;i<=$num;i++));do
sum=$((sum+((i*i))))
done
echo $sum
}
difference(){
num=$1
first=$(square_of_sum $num)
sec=$(sum_of_squares $num)
echo $((first-sec))
}
case "$1" in 
square_of_sum) square_of_sum $2;;
sum_of_squares) sum_of_squares $2;;
difference) difference $2;;
esac
