class Complement
  def self.of_dna(dna_strand)
    fail ArgumentError unless dna_strand.delete("GCTA").empty?
    dna_strand.gsub(/[GCTA]/, "G" => "C", "C" => "G", "T" => "A", "A" => "U")
  end

  def self.of_rna(rna_strand)
    fail ArgumentError unless rna_strand.delete("CGAU").empty?
    rna_strand.gsub(/[CGAU]/, "C" => "G", "G" => "C", "A" => "T", "U" => "A")
  end
end
