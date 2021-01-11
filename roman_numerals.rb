def old_roman_numeral(an_integer)
  # TODO: translate integer in roman number - old-style way
  roman_numeral_dict = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }
  return calculate(roman_numeral_dict, an_integer)
end

def new_roman_numeral(an_integer)
  # TODO: translate integer in roman number - modern-style way
  roman_numeral_dict = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  return calculate(roman_numeral_dict, an_integer)
end

def calculate(roman_numeral_dict, an_integer)
  roman_numeral_to_return = ""

  roman_numeral_dict.each do |key, value|
    while an_integer >= value
      roman_numeral_to_return << key
      an_integer = an_integer - value
    end
  end

  return roman_numeral_to_return
end

 puts "The old way: " + old_roman_numeral(4)
 puts "The new way: " + new_roman_numeral(4)
