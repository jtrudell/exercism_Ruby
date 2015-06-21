class Phrase
  # CHARACTERS are ord of lower case letters, numbers, comma and apostrophe
  CHARACTERS = [32, 39, 44, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98,
                99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110,
                111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]

  def initialize(phrase)
    @phrase = phrase.downcase
    remove_characters
  end

  def remove_characters
    @phrase.each_char do |char|
      if CHARACTERS.include?(char.ord) != true
        @phrase.delete!(char)
      end

      if char.ord == 44
        @phrase.gsub!(char, ' ')
      end
    end
  end

  def word_count
    words = @phrase.split
    word_count_hash = {}
    words.each { |key| word_count_hash[key] = words.count(key) }
    word_count_hash
  end
end
