class Player
  attr_reader :lives, :name
  def initialize name
    @name = name
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