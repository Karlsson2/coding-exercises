def shuffle(array)
  # TODO: shuffle the array manually

  array_b = []
  array_copy = array.dup
  until array_copy.empty?
    random_index = rand(0..(array_copy.length - 1))
    array_b << array_copy[random_index]
    array_copy.delete_at(random_index)
  end

  return array_b
end

cool_array = [1, 2, 3, 4, 5, 67, 8]
p shuffle(cool_array)
