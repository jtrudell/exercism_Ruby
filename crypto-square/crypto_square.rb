class Crypto
  def initialize(phrase)
    @phrase = phrase
  end

  def normalize_plaintext
    @phrase.downcase!
    @phrase.gsub!(/\W/, "")
  end

  def size
    normalize_plaintext
    num_rows = Math.sqrt(@phrase.length).ceil
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
end
