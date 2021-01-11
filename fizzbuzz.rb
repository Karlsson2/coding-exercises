def fizz_buzz(number)
  raise ArgumentError, 'Argument is invalid' if number < 1

  array_of_numbers = (1..number).to_a

  array_of_numbers.each_with_index do |value, index|
    if (value % 3).zero? && (value % 5).zero?
      array_of_numbers[index] = "FizzBuzz"
    elsif (value % 5).zero?
      array_of_numbers[index] = "Buzz"
    elsif (value % 3).zero?
      array_of_numbers[index] = "Fizz"
    end
  end
  return array_of_numbers
end


p fizz_buzz(75)
