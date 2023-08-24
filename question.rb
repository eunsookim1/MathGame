class Question
  # attr_accessor :numb1
  # attr_accessor :numb2

  def initialize
    @numb1 = rand(1..10)
    @numb2 = rand(1..10)
    @question = ": What does #{@numb1} plus #{@numb2} equal?"
    @answer = @numb1 + @numb2
  end

  def ask_question(player)
    puts player + @question
  end

  def check_answer(player_name, user_answer)
    if user_answer.to_i === @answer
      puts "#{player_name}: Yes! You are correct."
      return true
    else 
      puts "#{player_name}: Seriously? No!"
      return false
    end
  end

end