# Planning

## Classes

### Game
1. Role:
    - manage game state
    - includes game loop, current player, and game stats
2. Attributes:
    - @current_player
    - @player 1 - Player instance
    - @player 2 - Player instance
3. Methods:
    - initialize: players 
        - two Player classes
    - switch player 
        - ternary op
    - display scores 
        - puts interpolated string
    - play round 
        - create new question class (delete previous instance?)
    - check for game over 
        - if either player.lives == 0
    - announce winner 
        - puts interpolated string
### Question
1. Role: 
    - generate and ask the math question
    - then take in and verify if player answer is correct 
2. Attributes:
    - @num1
    - @num2
    - @answer
    - param: player answer
    - question
        - puts interpolated string
3. Methods:
    - initialize: generate math question
        - two random numbers
    - ask question
        - puts interpolated string
    - take in and check answer
        - player_answer = gets.chomp.to_i
        - return true for correct, false for wrong

### Player
1. Role:
    - hold player specific information
    - likely only score / lives
2. Attributes:
    - name
        - not strictly necessary, P1 or P2 assigned by Game at Player creatation
    - @lives
3. Methods:
    - initialize: lives and name
        - @lives = 3
    - remove life
        - @lives -= 1
    - check if alive
        - if @lives == 0