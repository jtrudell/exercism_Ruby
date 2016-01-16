class Crypto

  attr_reader :normalize_plaintext, :size

  def initialize(phrase)
    @phrase = phrase
    @normalize_plaintext = convert_to_plain_string
    @size = Math.sqrt(@phrase.length).ceil
  end

  def convert_to_plain_string
    @phrase.downcase!
    @phrase.gsub!(/\W/, "")
  end

  def plaintext_segments
    segments = []
    segments << @phrase.slice!(0, @size) while @phrase.length > 0
    segments
  end

  def generate_letters
    segments = plaintext_segments
    segments.map! {|row| row.split("")}
    segments.last << nil until segments.last.length == @size
    segments
  end

  def encrypted_segments
    segments = generate_letters.transpose
    segments.map { |segment| segment.compact.join }
  end

  def ciphertext
    encrypted_segments.join
  end

  def normalize_ciphertext
    encrypted_letters = []
    generate_letters.transpose.each { |row| encrypted_letters << row.join }
    encrypted_letters.join(" ")
  end

end
