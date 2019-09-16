class Turn

  attr_reader :player

  def initialize(current_player)
    @question = Question.new
    @player = current_player
  end
  
  def run 
    puts @question.ask(@player)
    answer = @question.is_answer_correct
    if !answer
      puts "#{@player.name}: Seriously? No!"
      @player.lose_life
    else
      puts "#{@player.name}: YES! You are correct."
    end
  end

end