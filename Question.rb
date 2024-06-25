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
  def question
    puts "What is #{@num1} plus #{@num2}?"
    print ">"
    player_answer = gets.chomp.to_i
    self.correct_answer player_answer
  end
end