class JungleBeat
  attr_reader :list
  attr_accessor :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    beats_array = data.split
    beats_array.each do |beat|
      list.append(beat)
    end
    data
  end

  def count
   self.list.count
  end

  def play
    beats = list.to_string
     `say -r 175 -v Boing #{beats}`
  end

end