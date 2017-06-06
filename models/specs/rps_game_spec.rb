require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'

require_relative '../rps_game'

class TestRpsGame < MiniTest::Test

def setup()
  @draw_rock = RpsGame.new({
    'player1_move' => "rock",
    'player2_move' => "rock"
    })
   @draw_scissors = RpsGame.new({
    'player1_move' => "scissors",
    'player2_move' => "scissors"
    })
   @draw_rock_win = RpsGame.new({
    'player1_move' => "rock",
    'player2_move' => "scissors"
    })
   @rock_paper = RpsGame.new({
    'player1_move' => "rock",
    'player2_move' => "paper"
    }) 

   @rock_scissors = RpsGame.new({
    'player1_move' => "rock",
    'player2_move' => "scissors"
    })

   @paper_rock = RpsGame.new({
    'player1_move' => "paper",
    'player2_move' => "rock"
    })
   @paper_scissors = RpsGame.new({
    'player1_move' => "paper",
    'player2_move' => "scissors"
    })
   @scissors_paper = RpsGame.new({
    'player1_move' => "scissors",
    'player2_move' => "paper"
    })
   @scissors_rock = RpsGame.new({
    'player1_move' => "scissors",
    'player2_move' => "rock"
    })



end

def test_draw()
  assert_equal("draw", @draw_rock.check_result())
end

def test_draw_scissors()
  assert_equal("draw", @draw_scissors.check_result())
end

def test_rock_paper()
  assert_equal("paper beats rock!", @rock_paper.check_result())
end

def test_a_bunch()
  # binding.pry
  assert_equal("paper beats rock!", @paper_rock.check_result)
  assert_equal("scissors beats paper!", @paper_scissors.check_result)
  assert_equal("scissors beats paper!", @scissors_paper.check_result)
  assert_equal("rock beats scissors!", @scissors_rock.check_result)
  assert_equal("rock beats scissors!", @rock_scissors.check_result)

  
end

end