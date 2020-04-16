class Knight_Node
  attr_accessor :data, :parent, :child_array
  def initialize(data, parent = nil)
    @data = data
    @parent = parent
    @child_array = nil
  end
end
