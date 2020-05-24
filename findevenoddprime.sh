#! /bin/bash 


function isEven() {
	temp=$1
	rem=$((temp%2))
        if [ $rem -eq 0 ]
        then
                even_array[count_even]=$i
                ((count_even++))
	fi
}

function isOdd() {
	temp1=$1
	rem1=$((temp1%2))
        if [ $rem1 -ne 0 ]
        then
                odd_array[count_odd]=$i
                ((count_odd++))
        fi
}

function isPrime() {
	checkNumber=$1
	count=0
	for ((counter=1; counter<=checkNumber; counter++))
	do
	rem2=$((checkNumber%counter))
	if [ $rem2 -eq 0 ]
	then
		count=$((count+1))
	fi
	done
	if (($count==2))
	then
		prime_array[count_prime]=$i
		((count_prime++))
	fi
}



echo "enter the range of n : "
read n
count_even=0
count_odd=0
count_prime=0

for ((i=1; i<=n; i++))
do
	isEven $i

	isOdd $i

	isPrime $i
done
		echo "The prime numbers are : ${prime_array[@]}"
		prime_sum=0
                for l in ${prime_array[@]}
                do
                        prime_sum=`expr $prime_sum + $l`
                done
                echo "The sum of prime numbers : $prime_sum"
                prime_len=${#prime_array[@]}
                echo $prime_len
                prime_avg=`echo $prime_sum /$prime_len|bc`
                echo "The average of prime numbers : $prime_avg"
		echo "The even numbers are : ${even_array[@]}"
		even_sum=0
		for j in ${even_array[@]}
		do
			even_sum=`expr $even_sum + $j`
		done
		echo "The sum of even numbers : $even_sum"
		even_len=${#even_array[@]}
		echo $even_len
		even_avg=`echo $even_sum /$even_len|bc`
		echo "The average of even numbers : $even_avg"
		echo "The odd numbers are : ${odd_array[@]}"
                odd_sum=0
                for k in ${odd_array[@]}
                do
                        odd_sum=`expr $odd_sum + $k`
                done
                echo "The sum of odd numbers are : $odd_sum"
                odd_len=${#odd_array[@]}
                echo $odd_len
                odd_avg=`echo $odd_sum /$odd_len|bc`
                echo "The average of odd numbers : $odd_avg"
