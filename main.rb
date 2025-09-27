require_relative "lib/board"

puts "Welcome to tic-tac-toe!\nA player wins when they mark all three spaces of a row, column, or diagonal of the grid"
Board.help
puts "Enter player X's name"
playerX = gets.chomp
puts "Enter player O's name"
playerO = gets.chomp

