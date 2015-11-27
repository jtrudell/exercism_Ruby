class Crypto
  def initialize(phrase)
    @phrase = phrase
    @normailzed = ""
  end

  def normalize_plaintext
    @phrase.downcase!
    @phrase.gsub(/\W/, "")
  end
end
