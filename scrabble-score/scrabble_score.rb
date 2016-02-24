class Scrabble
  def initialize(word)
    @word = word
    @total = 0
    @scoring = {
      1 => %w(A E I O U L N R S T),
      2 => %w(D G),
      3 => %w(B C M P),
      4 => %w(F H V W Y),
      5 => %w(K),
      8 => %w(J X),
      10 => %w(Q Z)
    }
  end

  def self.score(word)
    new(word).score
  end

  def score
    return @total if @word.nil? || @word.empty?
    @word.each_char { |char| score_char(char.upcase) }
    @total
  end

  def score_char(char)
    @scoring.each { |point, letter| @total += point if letter.include?(char) }
  end
end
