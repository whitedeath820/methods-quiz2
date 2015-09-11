module MethodsQuiz2
	
	def without_doubles(die1,die2)
		return die1 + die2 unless die1 == die2
			return die1 + die2 + 1 unless die1 == 6
				die1 + 1
	end

	def max_maybe?(num1,num2)
		if num1 == num2
			0
		elsif num1 % 5 == num2 % 5
			which_number_is_bigger?(true,num1,num2)
		else
			which_number_is_bigger?(false,num1,num2)
		end
	end

	def which_number_is_bigger?(lessthan,n,i)
		if n > i
			return n unless lessthan == true
				i
		else
			return i unless lessthan == true
				n
		end

	end

	def squirrels_play?(temp,summer)
		return temp >= 60 && temp <= 90 unless summer == true
			temp >=60 && temp <= 100
	end

	def red_ticket(a,b,c)
		if a == b && b == c
			return 5 unless 


end
