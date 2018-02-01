class Node
  attr_reader :surname, :next_node
  def initialize(data, next_node=nil)
    @surname = data
    @next_node = next_node
  end


end
