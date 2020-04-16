require_relative 'knight_node.rb'
require_relative 'knight.rb'
class Node_Tree
  attr_accessor :root
  def initialize(root)
    @root = root 
    @visited_squares = []
  end
  def possible_moves(coordinates = @root)
    knight = Knight.new(coordinates)
    knight.possible_moves
  end
end
node = Knight_Node.new([2, 1])
tree = Node_Tree.new(node)
print tree.possible_moves
