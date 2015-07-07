class School
  def initialize
    @students = {}
  end

  def to_hash
    @students.each_value(&:sort!)
    @students.sort.to_h
  end

  def add(name, grade)
    @students.key?(grade) ? @students[grade] << name : @students[grade] = [name]
  end

  def grade(grade)
    @students.key?(grade) ? @students[grade].sort : []
  end
end
