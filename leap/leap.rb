class Year
  def self.leap?(year)
    if year % 4 == 0
      year % 100 != 0 || year % 400 == 0 ? yes_a_leap_year(year) : not_a_leap_year(year)
    else
      not_a_leap_year(year)
    end
  end

  def self.yes_a_leap_year(year)
    "Yes, #{year} is a leap year"
  end

  def self.not_a_leap_year(year)
    "No, #{year} is not a leap year"
  end
end
