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
end
