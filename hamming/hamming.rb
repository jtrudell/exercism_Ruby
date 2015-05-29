class Hamming
  def self.compute(strand_one, strand_two)
    fail ArgumentError if strand_one.length != strand_two.length
    combined_strand = strand_one.split('').zip(strand_two.split(''))
    combined_strand.count { |pair| pair[0] != pair[1] }
  end
end
