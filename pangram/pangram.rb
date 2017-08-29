class Pangram
  require 'set'

  def self.pangram?(phrase)
    ('a'..'z').to_set.subset?(phrase.downcase.split('').to_set)
  end
end

module BookKeeping
  VERSION = 4
end
