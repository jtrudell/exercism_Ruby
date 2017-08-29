class Pangram
  require 'set'
  def self.pangram?(phrase)
    Set.new("a".."z").subset?(Set.new(phrase.downcase.split('')))
  end
end

module BookKeeping
  VERSION = 4
end
