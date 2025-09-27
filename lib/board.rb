class Board
  @@simbols = [nil,1,2,3,4,5,6,7,8,9]


  @@board = " +---+---+---+
  | #{@@simbols[1]} | #{@@simbols[2]} | #{@@simbols[3]} |
  +---+---+---+
  | #{@@simbols[4]} | #{@@simbols[5]} | #{@@simbols[6]} |
  +---+---+---+
  | #{@@simbols[7]} | #{@@simbols[8]} | #{@@simbols[9]} |
  +---+---+---+"


  @@help = "Grid positions:\n #{@@board}"
  
  def self.help
    puts @@help
  end

end 