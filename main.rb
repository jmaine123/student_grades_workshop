require 'faker'

failing_student = []

failing_grades = []

passing_student = []

passing_grades = []


 class Student
   @@count = 0
   attr_accessor :full_name, :email, :id
   def initialize(full_name, email)
     @id = @@count + 1
     @full_name = full_name
     @email = email
     @@count += 1
   end
 end



 50.times do
   first_name = Faker::Name.first_name
   last_name = Faker::Name.last_name
   email = Faker::Internet.email
   full_name = "#{first_name} #{last_name}"
   gpa = rand(0.0..4.0).round(2)
   if (gpa < 2.0)
     student = Student.new(full_name, email)
     failing_student<<[student.full_name,email,gpa]
   else
     student = Student.new(full_name, email)
     passing_student<< [student.full_name,email,gpa]
   end

 end

 failing_student.each do |student|
   failing_grades<<student[2]
 end

 p failing_grades
 p passing_student
