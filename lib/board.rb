require_relative "game"

class Board
  

  def initialize
    @cells = Array.new(10, " ")
  end

  def board
    puts "+---+---+---+\n" + "| #{@cells[1]} | #{@cells[2]} | #{@cells[3]} |\n" \
                                  "+---+---+---+\n" + "| #{@cells[4]} | #{@cells[5]} | #{@cells[6]} |\n" \
                                                      "+---+---+---+\n" + "| #{@cells[7]} | #{@cells[8]} | #{@cells[9]} |\n" \
                                                                          "+---+---+---+\n"
  end

    

  def self.help 
    puts "Grid positions:"
    puts "+---+---+---+\n" + "| 1 | 2 | 3 |\n" \
                                  "+---+---+---+\n" + "| 4 | 5 | 6 |\n" \
                                                      "+---+---+---+\n" + "| 7 | 8 | 9 |\n" \
                                                                          "+---+---+---+\n"
  end



  def check_simbols(index)
    @cells[index]
  end

  def new_simbols(move, simbol)
    @cells[move] = simbol
  end
end
