require "./question.rb"

class Player
  attr_accessor :player_name
  attr_accessor :lives # declaring variables use a colon
  
  # put in player 1 or 2 here

  def initialize(name)
    @lives = 3 # accessing the variable
    @player_name = name
  end

  def game_lives
    @lives -= 1
  end

  def newQuestion(player)
    question = Question.new()
    question.ask_question(player)

    answer = $stdin.gets.chomp
    if !question.check_answer(@player_name, answer)
      game_lives
    end
  end

end
