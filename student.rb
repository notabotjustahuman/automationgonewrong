require_relative 'reportcard'
# taking information from reportcard to be able to run the class with all the information
class Student
  attr_accessor :name, :age, :report_card

  # Constructor accepts name and age attributes and creates an instance of Reportcard
  def initialize(name, age)
    @name = name
    @age = age
    @report_card = Report_Card.new
  end
end
