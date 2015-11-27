class Crypto
  def initialize(phrase)
    @phrase = phrase
    @ciphered = ""
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
    normalized_phrase = normalize_plaintext
    row_length = size
    segments = []
    while normalized_phrase.length > 0
      segments << normalized_phrase.slice!(0, row_length)
    end
    segments
  end

  def ciphertext
    segments = plaintext_segments
    segments.map! {|row| row.split("")}
    until segments.last.length == segments.length
      segments.last << nil
    end
    segments = segments.transpose
      segments.map! do |segment|
        segment.delete(nil)
        segment.join
      end
      segments.join
  end

end
