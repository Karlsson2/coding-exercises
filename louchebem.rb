def louchebemize(sentence)

  # take first consonant group (letters before first vowel)
  # replace them with L
  # then take that group of consonants and put them at the end of the word
  # add a Louchebem suffix, "EM"
  # Constraints:
  # words beginning with a vowel should not change, just add L and suffix at the end.
  # random suffix should be selected from suffix array
  # dont translate spaces and special characters.

  suffixes = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  vowels = ["a", "i", "e", "o", "u"]

  sentence_array = sentence.split(/\b/)

  sentence_array.each_with_index do |word, sentence_index|
    # if the word is a non word character, don't translate it
    if word.match?(/\W/)
    else
      split_word = word.downcase.chars
      # If the first letter is a vowel, handle edge case.
      if vowels.include? split_word[0]
        sentence_array[sentence_index] = "l#{word}#{suffixes.sample}"
      else
        # translate each word and put it in the correct place
        split_word.each_with_index do |character, character_index|
          if vowels.include? character
            consonant_group = split_word.join[0..(character_index - 1)]
            remaining_word = split_word.join[character_index..]
            new_word = "l#{remaining_word}#{consonant_group}#{suffixes.sample}"
            sentence_array[sentence_index] = new_word
            break
          end
        end
      end
    end
  end
  return sentence_array.join
end


p louchebemize("This is a sentence.")
