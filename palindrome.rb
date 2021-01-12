def palindrome?(a_string)
  # TODO: check if a_string is a palindrome
  if a_string.empty?
    return false
  else
    a_string = a_string.gsub(/[\s\W]/, "").downcase
    a_string == a_string.reverse
  end
end

p "Is madam a palindrome? #{palindrome?("madam")}"
p "Is sentence a palindrome? #{palindrome?("sentence")}"
