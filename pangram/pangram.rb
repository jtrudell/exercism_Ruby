class Pangram
  def self.pangram?(phrase)
    return false if phrase.length < 26

    phrase = phrase.downcase.codepoints
    (97..122).to_a.all? { |cp| phrase.include?(cp) }
  end
end

module BookKeeping
  VERSION = 4
end
