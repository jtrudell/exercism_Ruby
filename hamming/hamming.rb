class Hamming
  def self.compute(strand_one, strand_two)
    mutations = 0
    fail ArgumentError if strand_one.length != strand_two.length
    combined_strand = strand_one.split('').zip(strand_two.split(''))
    combined_strand.each { |pair| mutations += pair[0] != pair[1] ? 1 : 0 }
    mutations
  end
end

#figure out inject