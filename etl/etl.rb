class ETL
  def self.transform(old_scoring)
    new_scoring = {}
    old_scoring.each do |key, value|
      value.each { |item| new_scoring[item.downcase] = key }
    end
    new_scoring
  end
end
