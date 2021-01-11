def beer_song(beer_start_count)
  counter = beer_start_count

  while counter.positive?
    case counter
    when 1
      puts "#{counter} bottle of beer on the wall, #{counter} bottle of beer!\n"
      puts "Take one down, pass it around, no more bottles of beer on the wall!\n"
    when 2
      puts "#{counter} bottles of beer on the wall, #{counter} bottles of beer!\n"
      puts "Take one down, pass it around, #{counter - 1} bottle of beer on the wall!\n"
    else
      puts "#{counter} bottles of beer on the wall, #{counter} bottles of beer!\n"
      puts "Take one down, pass it around, #{counter - 1} bottles of beer on the wall!\n"
    end
    counter -= 1
  end
end


beer_song(99)
