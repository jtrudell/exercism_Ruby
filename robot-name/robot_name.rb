class Robot

  def name 
    Regexp.new('/^[A-Z]{2}\d{3}$/')
  end

  def has_name
    self.name
  end
end