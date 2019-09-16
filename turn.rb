class Turn

  def initialize(current_player)
    @question = Question.new
    @player = current_player
  end
  
  def run 
    answer = @question.ask(@player)
    is_correct = @question.is_answer_correct(answer)
    if !is_correct
      puts "#{@player.name}: Seriously? No!"
      @player.lose_life
    else
      puts "#{@player.name}: YES! You are correct."
    end
  end

end