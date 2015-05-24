class Hamming
  def self.compute(strand_one, strand_two)
    mutations = 0
    fail ArgumentError if strand_one.length != strand_two.length
    loop do
      mutations += strand_one[0] != strand_two[0] ? 1 : 0
      strand_one.slice!(0)
      strand_two.slice!(0)
      break if strand_one.empty?
    end
    mutations
  end
end
