class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil
    @count = 0
    @name = []
  end

  def append(data)
    @name.push(data)
    node = node_test(data)
    @head = node
    @count += 1
    node
  end

  def node_test(surname)
    Node.new(surname)
  end

  def to_string
    "The #{@name.first} family"
  end
end
