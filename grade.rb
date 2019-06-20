# Constructor takes subject and score attributes
# creating grades -> subject, key score is the key
class Grade
  attr_accessor :subject, :score

  def initialize(subject, score)
    @subject = subject
    @score = score
  end

end
