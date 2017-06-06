class RpsGame

  def initialize(move1, move2)
      @player1_move = move1
      @player2_move = move2

    # @player1_move = options['player1_move']
    # @player2_move = options['player2_move']  
  end

  def check_result()
    if @player1_move == @player2_move 
      return "draw! everyone loses!"
    end
    
    if @player1_move == "rock" 
     return @player2_move == "paper" ? "paper beats rock! player 2 wins!" : "rock beats scissors! player 1 wins!"
   end

   if @player1_move == "scissors"
    return @player2_move == "paper" ? "scissors beats paper! player 1 wins!" : "rock beats scissors! player 2 wins!"
   end
   if @player1_move == "paper"
     return @player2_move == "rock" ? "paper beats rock! player 1 wins!" : "scissors beats paper! player 2 wins!"
   end
 end
end

