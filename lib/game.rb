require_relative "board"

class Game
  attr_accessor :round
  WINNINGS = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [3, 5, 7]
  ]

  def winner?
    WINNINGS.each do |win|
      pos1, pos2, pos3 = win
      if Board.check_simbols(pos1) == Board.check_simbols(pos2) &&
         Board.check_simbols(pos2) == Board.check_simbols(pos3) &&
         Board.check_simbols(pos1) != " "
          return true
      end
    end
    return false
  end

  def initialize(player_x, player_o)
    @player_x = player_x
    @player_o = player_o
    Board.clean_grid
  end


  def check_position
    i = 0
    while i.zero?
      position = gets.chomp.to_i
      if position < 1 || position > 9
        puts "Please enter a valid position"
      elsif Board.check_simbols(position) != " "
        puts "The position has already been used, please enter a valid position"
      else
        i += 1
      end
    end
    position
  end

  def new_game
    round = 0
    while round < 9
      if round.even?
        puts "#{@player_x} enter a position"
        Board.new_simbols(check_position, "X")
      else
        puts "#{@player_o} enter a position"
        Board.new_simbols(check_position, "O")
      end
      round += 1
      puts Board.board
      if winner?
        if round.even?
          puts "#{@player_o} wins!"
        else
          puts "#{@player_x} wins!"
        end
        break
      elsif round == 9
        puts "It's a Draw!"
        break
      end

    end
  end
end
