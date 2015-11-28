class Crypto

  attr_accessor :ciphered_string

  def initialize(phrase)
    @phrase = phrase
  end

  def normalize_plaintext
    @phrase.downcase!
    @phrase.gsub!(/\W/, "")
  end

  def size
    normalize_plaintext
    Math.sqrt(@phrase.length).ceil
  end

  def plaintext_segments
    normalized_phrase = @phrase
    row_length = size
    segments = []
    while normalized_phrase.length > 0
      segments << normalized_phrase.slice!(0, row_length)
    end
    segments
  end

  def generate_rows
    square = plaintext_segments
    square.map! {|row| row.split("")}
    until square.last.length == square.length
      square.last << nil
    end
    square
  end

  def generate_rows_from_columns
    column_segments = generate_rows.transpose
    column_segments.map! do |segment|
      segment.delete(nil)
      segment.join
    end
    column_segments
  end

  def ciphertext
    ciphered_string = generate_rows_from_columns
    ciphered_string.join
  end

  def normalize_ciphertext
    "bop"
  end

end
