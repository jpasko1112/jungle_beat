class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      previous_node = @head
      new_node = Node.new(data)
      while previous_node.next_node != nil
        previous_node = previous_node.next_node
      end
      previous_node.next_node = new_node
    end
    data
  end

  def count
    counter = 0
    current = head
    until current.nil?
      current = current.next_node
      counter += 1
    end
    counter
  end

  def to_string
    beats = []
    current_node = head
    while current_node != nil
      beats << current_node.data
      current_node = current_node.next_node
    end
    # .join returns a string obj, seperated by given separator.
    beats.join(" ")
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      oldhead = @head
      @head = Node.new(data)
      @head.next_node = oldhead
    end
  end

  def insert(index, data)

  end

end