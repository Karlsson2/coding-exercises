def sum_recursive(min, max)
  # CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
  if min == max
    return min
  elsif min > max
    return - 1
  else
    min + sum_recursive(min + 1, max)
  end
end


print sum_recursive(8,13)
