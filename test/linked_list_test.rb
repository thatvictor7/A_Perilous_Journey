require 'minitest/autorun'
require 'minitest/pride'
require "./lib/linked_list"
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_appending_data
    list = LinkedList.new
    list.append("West")
    list
  end

  

end
