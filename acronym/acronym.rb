class Acronym
  VERSION = 1

  def self.abbreviate(phrase)
    words = process(phrase)
    abbreviation = ''
    words.map { |word| abbreviation += find_letters(word) }
    abbreviation.upcase
  end

  def self.process(phrase)
    phrase = phrase[phrase.index(':') - 1..-1] if phrase.index(':')
    phrase.split(/\W/)
  end

  def self.find_letters(word)
    letters = ''
    word.each_char do |letter|
      letters += letter if word.index(letter) == 0 || letter.ord >= 'A'.ord && letter.ord <= 'Z'.ord
    end
    letters
  end
end
