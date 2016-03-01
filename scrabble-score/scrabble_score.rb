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
    @word = word.to_s.upcase.strip
  end

  def self.score(word)
    new(word).score
  end

  def score
    @word.each_char.inject(0) do |sum, char|
      sum + SCORING.select { |key, value| value.include?(char) }.flatten[0]
    end
  end
end
