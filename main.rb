require "./Game"
require "./Question"
require "./Player"

game = Game.new
until game.game_over
  puts "----- NEW TURN -----"
  game.play_round
end
