class Question

  attr_reader :value1, :value2, :ask

  def initialize()
    @value1 = rand 1..20
    @value2 = rand 1..20
  end
  
  def ask(current_player)
    puts "#{current_player.name}: What does #{value1} plus #{value2} equal?"
    print "> "
    answer = gets.chomp
  end

  def is_answer_correct(answer)
    answer.to_i == @value1 + @value2
  end
end