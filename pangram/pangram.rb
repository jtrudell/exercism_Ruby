class Pangram
  def self.pangram?(phrase)
    (97..122).all? { |cp| phrase.downcase.include?(cp.chr) }
  end
end

module BookKeeping
  VERSION = 4
end
