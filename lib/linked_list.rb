require 'pry'
class LinkedList
  attr_reader :head, :count


  def initialize
    @head = nil
    @count = 0
    # @nodes  = Node.new(data)
  end

  def append(data)
    node = single_node(data)

    @count += 1
    @head = node
  end

  def prepend(data)
    node = single_node(data)
    @next_node = @head
    @head = node
     #binding.pry
  end

  def single_node(surname)
    Node.new(surname)
  end

  def to_string
    "The #{head.surname} family"
  end
end
