class Player
  attr_reader :lives
  def initialize
    @lives = 3
  end
  def remove_life
    @lives -= 1
  end
  def alive?
    if @lives == 0
      false
    else true
    end
  end
end