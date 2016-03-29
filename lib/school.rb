# code here!
class School

  attr_accessor :roster
  attr_reader :name, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name,grade)
    @grade = grade
    @name = name
    @roster[@grade] ||= []
    @roster[@grade] << @name
  end 

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end 


end