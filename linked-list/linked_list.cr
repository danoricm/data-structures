# linked_list.cr
class Node
  property data : Int32
  property next : Node?

  def initialize(data : Int32)
    @data = data
    @next = nil
  end
end

class LinkedList
  property head : Node?

  def initialize
    @head = nil
  end

  def append(data : Int32)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next
        current = current.next
      end
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
