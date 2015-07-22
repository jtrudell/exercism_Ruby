class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    matches = []
    list.each do |item|
      if points(item.downcase) == points(word) && item.downcase != word
        matches << item
      end
    end
    matches
  end

  def points(string)
    string.codepoints.sort
  end
end
