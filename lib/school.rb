# code here!
require 'Pry'
class School
attr_accessor 
attr_reader :schoo, :roster

def initialize(schoo, roster={})
  @schoo = schoo
  @roster = roster 
end 

def add_student(student, grade)
  @student = student
  @grade = grade

 if @roster.keys.include?(@grade)
  @roster[@grade] << @student
else   
  @roster[@grade] = []
  @roster[@grade] << @student
end 
end

def grade(grade)
  @grade = grade
  @roster[@grade]

end 

def sort
  @roster.each_with_object({}) do |(grade, students), new_hash|
    new_hash[grade] = students.sort 
  end
end

  # binding.pry

# puts "yo"
end 