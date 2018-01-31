require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
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

  def test_head_next_node_is_nil
    list = LinkedList.new
    list.append("West")
    assert_nil list.head.next_node
  end

  def test_list_count_at_one
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_to_string_of_append_data
    list = LinkedList.new
    list.append("West")
    assert_equal "The West family", list.to_string
  end

  def test_new_surname
    list = LinkedList.new
    assert_instance_of Node, list.append("Rhodes")
  end

  def test_count_two_append_surnames
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    assert_equal 2, list.count
  end

  def test_modified_to_string
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    expected = "The Rhodes family, followed by the Hardy family"
    # assert_equal expected, list.to_string
  end

  def test_prepending_node
    list = LinkedList.new
    list.append("Henderson")
    list.prepend("McKinney")
   binding.pry
  end
end
