class Student
  attr_accessor :name, :grade
  def initialize(name, grade = 0)
    @name = name
    @grade = grade
  end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)
students = []
nombres.size.times do |i|
  student = Student.new(nombres[i], i+1)
  students << student
end

print students

grades = students.map do |student|
  student.grade
end

puts grades