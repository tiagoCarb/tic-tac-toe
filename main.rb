require_relative "lib/board"
require_relative "lib/game"

puts "Welcome to tic-tac-toe!\nA player wins when they mark all three spaces of a row, column, or diagonal of the grid"
Board.help
puts "Enter player X's name"
player_x = gets.chomp
puts "Enter player O's name"
player_o = gets.chomp
Game.new(player_x, player_o).new_game
