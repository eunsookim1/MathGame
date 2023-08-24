require "./question.rb"
require "./players.rb"

class MathGame
 
  def initialize
  @player1 = Player.new("Player 1")
  @player2 = Player.new("Player 2")
  end
  
  def start_game
  while @player1.lives > 0 && @player2.lives > 0
    @current_player = @player1
    @player1.newQuestion("Player 1")
    
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts " ----- NEW TURN -----" 
    
    @current_player = @player2
    @player2.newQuestion("Player 2")

    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts " ----- NEW TURN -----" 
  end
  announce_winner
end

  def winner
    if @player1.lives == 0
      return @player2
    elsif @player2.lives == 0
      return @player1
    end
  end

  def announce_winner
    puts "#{winner().player_name} wins with the score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end

game = MathGame.new
game.start_game
