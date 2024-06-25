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
end

g1 = Game.new
