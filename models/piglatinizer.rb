class PigLatinizer
  def piglatinize(word)
    if "aeiou".include?(word[0].downcase)
      word + "way"
    else
      split_word = word.split(/([aeiou].*)/)
      new_word = split_word.last + split_word.first + "ay"
    end
  end

  def to_pig_latin(user_input)
    array = user_input.split(' ')
    array.map {|word| piglatinize(word)}.join(' ')
  end
end
