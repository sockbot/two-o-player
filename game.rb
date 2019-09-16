class Game

  def initialize
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
    @turns = []
  end
  
  def new_turn(current_player)
    turn = Turn.new(current_player)
    @turns << turn
    puts "----- NEW TURN -----"
    turn.run
    puts "#{@p1.name}: #{@p1.life}/3 vs #{@p2.name}: #{@p2.life}/3"
  end

  def run
    while @p1.life > 0 && @p2.life > 0 do
      new_turn(@current_player)
      @current_player = @current_player == @p1 ? @p2 : @p1
    end
    end_game(@current_player)
  end


  def end_game(winner)
    puts "#{winner.name} wins with a score of #{winner.life}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end