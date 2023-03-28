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
      oldhead = @head
      @head = Node.new(data)
      @head.next_node = oldhead
      data
  end

  def insert(index, data)
    current_node = @head
    (index - 1).times do 
      current_node = current_node.next_node
    end
    to_insert = Node.new(data)
    to_insert.next_node = current_node.next_node
    current_node.next_node = to_insert
  end

  # Find - takes two parameters (index, how many)
  def find(index, count)
    beats = []
    current_node = @head
    index.times do 
      current_node = current_node.next_node
    end
    while current_node != nil && beats.length < count
      beats << current_node.data
      current_node = current_node.next_node
    end
      beats.join(" ")
  end

  # includes? gives back true or false whether the supplied value is in the list.
  def includes?(data)
    to_string.include?(data)
  end

  def pop
    current_node = @head
    until current_node.next_node.next_node.nil?
      current_node = current_node.next_node
    end
    tail = current_node.next_node
    current_node.next_node = nil
    tail.data
    end
end