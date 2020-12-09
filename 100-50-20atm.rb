def withdraw(amount)
  #your code here
  number = amount
  return_array = [0,0,0]




    while number >= 100 && number != 130 && number != 110
      number = number - 100
      return_array[0] +=1
    end

    while number >= 50 && number != 80 && number != 60
      number = number-50
      return_array[1] +=1
    end

    while number >= 20
      number = number-20
      return_array[2] +=1
    end

puts "The amazing ATM will give you the following for #{amount}:"
puts"100's: #{return_array[0]}"
puts "50's: #{return_array[1]}"
puts "20's: #{return_array[2]}"
end

withdraw(230)
