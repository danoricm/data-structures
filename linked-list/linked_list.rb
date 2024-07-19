# linked_list.rb
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next while current.next
      current.next = new_node
    end
  end

  def print_list
    current = @head
    while current
      print "#{current.data} "
      current = current.next
    end
    puts ""
  end
end

llist = LinkedList.new
llist.append(1)
llist.append(2)
llist.append(3)
llist.append(4)
llist.print_list
