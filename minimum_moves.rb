require 'pry'
require 'pry-byebug'
require_relative 'knight.rb'

class Knight_Node
  attr_accessor :knight, :parent
  def initialize(coordinates, parent = nil)
    @knight = Knight.new(coordinates)
    @parent = parent
  end
end



start = [0, 0]
finish = [7, 7]
visited_squares = []
root = Knight_Node.new(start)
queue = []
queue << root
finish_node = nil
i = 0
loop do
  print i
  puts
  i += 1
  current = queue.shift
  visited_squares << current
  current.knight.possible_moves.each do |move|
    child = Knight_Node.new(move, current)
    child.parent = current
    queue << child unless visited_squares.include? child.knight.coordinates
    visited_squares << move
    if move == finish
      finish_node = child
    end
  end
  if !finish_node.nil? 
    break
  end
end
print finish_node.knight.coordinates
puts
until finish_node.parent.knight.coordinates == start
  print finish_node.parent.knight.coordinates   
  puts

  finish_node = finish_node.parent
end
  print finish_node.parent.knight.coordinates   
  puts
