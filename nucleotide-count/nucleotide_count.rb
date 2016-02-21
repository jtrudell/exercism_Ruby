class Nucleotide
	def self.from_dna(dna)
		raise ArgumentError if dna.delete('ATCG').length != 0
		@dna = dna
	end

	def self.count(letter)
		@dna.count(letter)
	end

	def self.histogram
		@letters = { 'A' => 0, 'T' => 0, 'C' => 0, 'G'=> 0 
		@letters.each_key { |key| @letters[key] = count(key) }
	end
end

class String
	def histogram
		Nucleotide.histogram
	end
end