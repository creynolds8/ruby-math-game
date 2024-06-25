require "./Player"

class Game
  attr_reader :p1, :p2, :current_player
  def initialize
    @p1 = Player.new "p1"
    @p2 = Player.new "p2"
    @current_player = @p1
  end
  def switch_player
    @current_player = (current_player == @p1) ? @p2 : @p1
  end
  def score
    puts "P1: #{@p1.lives}/3 vs P2: #{@p2.lives}/3"
  end
  def game_over
    if @p1.alive? && @p2.alive?
      return true
    else
      puts "----- GAME OVER -----"
      puts "Goodbye!"
    end
  end
end

g1 = Game.new
g1.game_over
g1.p1.remove_life
g1.p1.remove_life
g1.p1.remove_life
g1.game_over