require 'pry'
class LinkedList
  attr_reader :head, :count
  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @count += 1
    follow = @next_node
    new_node = @head
    if new_node == nil
      @head = single_node(data, follow)
    else
      while new_node.next_node != nil
      new_node = new_node.next_node
      end
    end
    new_node = Node.new(data, follow)
    #binding.pry
  end

  def prepend(data)
     new_head = @head
     prepend_node = Node.new(data, @head)
     @head = prepend_node
     prepend_node.next_node = new_head
  end



  def single_node(surname, follow)
    Node.new(surname, follow)
  end

  def to_string
    # binding.pry
    updated = @head
    families = "The #{head.surname} family"
    while updated.next_node != nil
      updated = updated.next_node
      families.push(", followed by the #{updated.surname} family")
    end
  end
end
