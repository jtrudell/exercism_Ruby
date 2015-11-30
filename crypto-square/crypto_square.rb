class Crypto

  attr_reader :normalize_plaintext, :size
  attr_accessor :ciphered_string

  def initialize(phrase)
    @phrase = phrase
    @normalize_plaintext = make_plain
    @size = Math.sqrt(@phrase.length).ceil
    @ciphered_string = ""
  end

  def make_plain
    @phrase.downcase!
    @phrase.gsub!(/\W/, "")
  end

  def plaintext_segments
    row_length = size
    segments = []
    while @phrase.length > 0
      segments << @phrase.slice!(0, row_length)
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
    @ciphered_string = ciphered_string.join
  end

  def normalize_ciphertext
    square = plaintext_segments
    square.map! {|row| row.split("")}
    square.transpose.each_with_index do |row, index|
      square[index] = row.join
    end
    square.join(" ")
  end

end
