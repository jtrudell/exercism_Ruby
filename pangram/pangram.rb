class Pangram
  def self.pangram?(phrase)
    return false if phrase.length < 26

    normalized_phrase = phrase.downcase.gsub(/[^a-z]/, '')
    char_count = {}

    normalized_phrase.each_char do |c|
      char_count[c] = true
      return true if char_count.length == 26
    end

    false
  end
end

module BookKeeping
  VERSION = 4
end
