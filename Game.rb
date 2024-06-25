class Game
  attr_reader :p1, :p2, :current_player
  def initialize
    @p1 = Player.new "P1"
    @p2 = Player.new "P2"
    @current_player = @p1
  end
  def switch_player
    @current_player = @current_player == @p1 ? @p2 : @p1
  end
  def score
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end
  def game_over
    if !@p1.alive? || !@p2.alive?
      puts "----- GAME OVER -----"
      self.announce_winner
      puts "Goodbye!"
      true
    else 
      false
    end
  end
  def announce_winner
    winner = @p1.alive? ? @p1 : @p2
    puts "#{winner.name} has won with a score of #{winner.lives}/3"
  end
  def play_round
    print "#{@current_player.name}: "
    question = Question.new
    if question.question
      puts "Correct!"
    else
      puts "NO!"
      @current_player.remove_life
    end
    self.score
    self.switch_player
  end
end