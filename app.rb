require 'faker'
require 'pry'
# making sure the user has the necessary DEPENDENCIES
require_relative 'student'
require_relative 'classroom'
require_relative 'grade'
# letting the computer know to read the other files (linking them to it)
# Our four classrooms for the first years
@A = Classroom.new("1A")
@B = Classroom.new("1B")
@C = Classroom.new("1C")
@D = Classroom.new("1D")

# Create test students with grades in various subjects
def generate_student
  s = Student.new(Faker::Name.name, rand(11..20))
  s.report_card.add_grade("math", rand(0..100))
  s.report_card.add_grade("history", rand(0..100))
  s.report_card.add_grade("english", rand(0..100))
  s.report_card.add_grade("science", rand(0..100))
  s
end

# Generate our students
1..25.times do |i|
  @A.add_student(generate_student)
end
1..25.times do |i|
  @B.add_student(generate_student)
end
1..25.times do |i|
  @C.add_student(generate_student)
end
1..25.times do |i|
  @D.add_student(generate_student)
end
# creating students then students are pushed into classrooms

# Check the rosters
# @A.roster
# puts ""
# @B.roster
# puts ""
# @C.roster
# puts ""
# @D.roster
# puts ""


############################################################
# CHALLENGE 1

def find_failing(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 200
      puts "#{value.name}: PASS"
    else
      puts "#{value.name}: FAIL"
    end
    }
end

#finding keys then taking their values and adding them together and then if the value is > 200 return pass/ < 200 FAIL
# find_failing(@A)

############################################################
# CHALLENGE 2
def find_exceptional(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 260
      puts "#{value.name}"
    end
    }
end

find_exceptional(@B)

############################################################
