require_relative "board"

class Game 
  attr_accessor :round

  def initialize (playerX, playerO)
    @playerX = playerX
    @playerO = playerO
    Board.cleanGrid
  end
  
   

  def checkHorizontal
    if Board.checkSimbols(1) == Board.checkSimbols(2) &&  
       Board.checkSimbols(2) == Board.checkSimbols(3) && Board.checkSimbols(1) != " "
        return true 
    elsif Board.checkSimbols(4) == Board.checkSimbols(5) &&  
          Board.checkSimbols(5) == Board.checkSimbols(6) && Board.checkSimbols(4) != " "
          return true 
    elsif Board.checkSimbols(7) == Board.checkSimbols(8) &&  
          Board.checkSimbols(8) == Board.checkSimbols(9) && Board.checkSimbols(7) != " "
          return true
    end
          return false
  end

  def checkVertical
    if Board.checkSimbols(1) == Board.checkSimbols(4) &&  
       Board.checkSimbols(4) == Board.checkSimbols(7) && Board.checkSimbols(1) != " "
        return true 
    elsif Board.checkSimbols(2) == Board.checkSimbols(5) &&  
          Board.checkSimbols(5) == Board.checkSimbols(8) && Board.checkSimbols(2) != " "
          return true 
    elsif Board.checkSimbols(3) == Board.checkSimbols(6) &&  
          Board.checkSimbols(6) == Board.checkSimbols(9) && Board.checkSimbols(3) != " "
          return true
    end
          return false
  end

  def checkDiagonal
    if Board.checkSimbols(1) == Board.checkSimbols(5) &&  
       Board.checkSimbols(5) == Board.checkSimbols(9) && Board.checkSimbols(1) != " "
        return true 
    elsif Board.checkSimbols(3) == Board.checkSimbols(5) &&  
          Board.checkSimbols(5) == Board.checkSimbols(7) && Board.checkSimbols(3) != " "
          return true 
    end
          return false
  end

  def checkPosition
    i = 0
    while i == 0
      position = gets.chomp.to_i
      if position < 1 || position > 9
        puts "Please enter a valid position"
      elsif Board.checkSimbols(position) != " "
        puts "The position has already been used, please enter a valid position"
      else 
        i += 1
      end
    end 
    return position
  end
  
  def newGame
    round = 0
    while round < 9 do 
      if round.even? 
       puts "#{@playerX} enter a position"
       Board.newSimbols(checkPosition,"X")
      else 
        puts "#{@playerO} enter a position"
       Board.newSimbols(checkPosition,"O")
      end
      round += 1
      puts Board.board
      if checkHorizontal || checkDiagonal || checkVertical
        if round.even?
          puts "#{@playerO} wins!"
          break
        else 
          puts "#{@playerX} wins!"
          break
        end
      elsif round == 9
        puts "It's a Draw!"
        break
      end
    
    end
  end  
end