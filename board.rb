require 'pry'
require 'pry-byebug'

class Board

  require_relative 'knight.rb'
  def initialize
    @positions = Array.new(8) { Array.new(8, ".") }
    @pieces = { :white_knight => 'k'}
  end
  
  def to_s
    @positions.each do |a| 
      print "|"
      a.each {|b| print "#{b}|" }
      puts
    end
  end
  def add_piece(piece)
    if piece == :white_knight
      @knight = Knight.new
      @positions[@knight.x_coordinate][@knight.y_coordinate] = @pieces[:white_knight]
    end
  end
end

board = Board.new
board.add_piece(:white_knight)
board.to_s
