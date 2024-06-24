# Planning

## Classes

### Game
1. Role:
    - manage game state
    - includes game loop, current player, and game stats
2. Attributes:
    - current player
    - player 1 and player 2
3. Methods:
    - initialize: players
    - switch player
    - display scores
    - play round
    - check for game over
    - announce winner
### Question
1. Role: 
    - generate and ask the math question
    - then take in and verify if player answer is correct
2. Attributes:
    - num1 and num2
    - answer and player answer
    - question
3. Methods:
    - initialize: generate math question
    - ask question
    - take in and check answer
      - return true for correct, false for wrong

### Player
1. Role:
    - hold player specific information
    - likely only score / lives
2. Attributes:
    - name
    - lives
3. Methods:
    - initialize: lives and name
    - remove life
    - check if alive