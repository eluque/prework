# <?php
# for($i=1; $i>=100; $i++){
# 	if($i%3==0){
# 		echo "Fizz";
# 	}elseif($i%5==0){
# 		echo "Buzz";
# 	}elseif($i%3 && $i%5 == 0){
# 		echo "FizzBuzz";
# 	}else{
# 		echo $i;
# 	}
# }
# ?>	

numbers_array = (1..100)

for elements in numbers_array
	if elements%3 && elements%5 == 0
		puts "FizzBuzz"
	elsif elements%3 == 0
		puts "Fizz"
	elsif elements%5 == 0
		puts "Buzz"
	else
		puts elements
	end
end

