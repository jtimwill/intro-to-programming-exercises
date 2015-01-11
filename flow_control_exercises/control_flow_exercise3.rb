


puts "type a number"

vars = gets.chomp

int_var = vars.to_i


answer = case 

when int_var >= 0 && int_var < 50 

  "the number is between 0 and 50"

when int_var >= 50 && int_var <= 100

  "the number is between 50 and 100"

else

  "the number is greater than 100 or negative"

end 


puts answer



