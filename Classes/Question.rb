class Question
  attr_reader :num1, :num2, :answer
  def initialize
    @num1 = rand(1...21)
    @num2 = rand(1...21)
    @answer = @num1 + @num2
  end
  def correct_answer player_answer
    if (@answer == player_answer)
      return true
    else
      false
    end
  end
end

q1 = Question.new

puts q1.num1
puts q1.num2
puts q1.answer

puts q1.correct_answer 11
