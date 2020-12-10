def similar_license_plates(plate1,plate2)
  p1 = plate1.delete(" ").chars
  p2 = plate2.delete(" ").chars

  p2string = plate2.delete(" ")
  p1string = plate1.delete(" ")

  allchars = [["0","O","Q"],["1","I","T"],["2", "Z"],["5", "S"],["8", "B"]]

  p1.each_with_index do |char, index|
    allchars.each do |charArray|
      if charArray.include?(char)
        p1[index] = charArray[0]
      end
    end
  end

  p2.each_with_index do |char, index|
    allchars.each do |charArray|
      if charArray.include?(char)
        p2[index] = charArray[0]
      end
    end
  end

  if p1 == p2
    puts "#{plate1} & #{plate2} are too similar!"
  else
    puts "#{plate1} & #{plate2} are not too similar!"
  end

end
