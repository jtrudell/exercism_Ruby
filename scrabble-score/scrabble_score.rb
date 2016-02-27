class Scrabble
  SCORING = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z)
  }

  def initialize(word)
    @word = word ? word.upcase.strip : ''
  end

  def self.score(word)
    new(word).score
  end

  def score
    @word.each_char.inject(0) { |sum, char| sum + score_char(char) }
  end

  def score_char(char)
    SCORING.each_pair { |key, value| return key if value.include?(char) }
  end
end
