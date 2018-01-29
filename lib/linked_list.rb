class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    node = node_test(data)
    @head = node
    node
  end

  def node_test(surname)
    Node.new(surname)
  end
end
