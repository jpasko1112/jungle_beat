class LinkedList

    attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      new_node = Node.new(data)
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
        current_node.next_node = new_node
    end
  end

  def count
    if @head.nil?
      counter = 0
    else
      counter = 1
      current_node = @head
      while current_node.next_node != nil
        current_node = current_node.next_node
        counter += 1
      end
    end
    counter
  end

  def to_string(data)
    string = ""
    current_node = @head
    if @head.nil?
      return string
    else
      while current_node.next != nil
        string << current_node.data
      end
      string
    end
  end
end