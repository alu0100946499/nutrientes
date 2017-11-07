class DLL

  Node = Struct.new(:value, :next, :prev)

  attr_reader :head, :tail

  def initialize()
    @head, @tail = nil, nil
  end
  
  def empty()
    return true if (@head == nil && @tail == nil)
    false
  end

  def insert_head(*objects)
    objects.each{ |x|
      if(self.empty)
        aux = Node.new(x, nil, @head)
        @tail = aux
        @head = aux
      else
        aux = Node.new(x, nil, @head)
        @head = aux
      end
    }
  end

  def insert_tail(*objects)
    objects.each{ |x|
      if(self.empty)
        aux = Node.new(x, @tail, nil)
        @tail = aux
        @head = aux
      else
        aux = Node.new(x, @tail, nil)
        @tail = aux
      end
    }
  end

end
