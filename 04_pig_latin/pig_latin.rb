def translate words
  vowels = ["a", "e", "i", "o", "u"]
  words = words.split(" ")
  words.collect! do |word|
    if vowels.include?(word[0])
      word += "ay"
    else
      if word[0..1] == "qu"
        word = word[2..-1] + "quay"
      elsif vowels.include?(word[1]) && word[0..1]
        word = word[1..-1] + word[0] + "ay"
      elsif vowels.include?(word[2])
        if word[1..2] == "qu"
          word = word[3..-1] + word[0] + "quay"
        else
          word = word[2..-1] + word[0..1] + "ay"
        end
      else
        if word[2..3] == "qu"
          word = word[4..-1] + word[0..1] + "quay"
        else
          word = word[3..-1] + word[0..2] + "ay"
        end
      end
    end
  end
  words.join(" ")
end
