module DLL
  
  class DLL
    include Enumerable

    Node = Struct.new(:value, :next, :prev)

    attr_reader :head, :tail

    def initialize()
     @head, @tail = nil, nil
    end
  
    def empty()
      return true if (@head == nil && @tail == nil)
      false
    end

    def to_s()
      out = ""
      aux = @tail
      while (aux != nil) do
        if(aux[:next] == nil)
          out << "#{aux[:value]}"
        else
          out << "#{aux[:value]}, "
        end
        aux = aux.next
      end

      out

    end

    def insert_head(*objects)
      objects.each{ |x|
        if(self.empty)
          aux = Node.new(x, nil, @head)
          @tail = aux
          @head = aux
        else
          aux = Node.new(x, nil, @head)
          @head[:next] = aux
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
          @tail[:prev] = aux
          @tail = aux
        end
      }
    end

    def erase_head()
      aux = @head[:prev]
      aux[:next] = nil
      @head = aux
    end

    def erase_tail()
      aux = @tail[:next]
      aux[:prev] = nil
      @tail = aux
    end

    def each
      aux = @tail
      while (aux != nil) do
        yield aux[:value]
        aux = aux.next
      end
    end

  end 

end
