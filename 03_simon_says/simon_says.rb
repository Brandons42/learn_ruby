def echo phrase
  phrase
end

def shout phrase
  phrase.upcase
end

def repeat(*args)
  if args.length == 1
    return "#{args[0]} #{args[0]}"
  else
    string = args[0]
    args[1] -= 1
    args[1].times do
      string += " #{args[0]}"
    end
    string
  end
end

def start_of_word(word, number)
  word[0...number]
end

def first_word(phrase)
  phrase = phrase.split
  phrase[0]
end

def titleize(phrase)
  phrase = phrase.split
  phrase.map! do |q|
    if q.length > 4
      q.capitalize
    else
      q.downcase
    end
  end
  phrase[0] = phrase[0].capitalize
  phrase[phrase.length - 1] = phrase[phrase.length - 1].capitalize
  phrase.join(" ")
end
