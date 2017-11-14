module Alimento

  # Esta clase permite crear una lista 
  # doblemente enlazada.
  # Se ha incluido el mixin Enumerable.
  class DLL

    include Enumerable

    Node = Struct.new(:value, :next, :prev)

    attr_reader :head, :tail

    # La lista se crea vacía por defecto.
    def initialize()
     @head, @tail = nil, nil
    end
  
    # Devuelve true si la lista está vacía, false en otro caso.
    def empty()
      return true if (@head == nil && @tail == nil)
      false
    end
    
    # Muestra los elementos de la lista como si fuese un string.
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

    # Inserta los elementos por el principio de la lista.
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

    # Inserta los elementos por el final de la lista.
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

    # Elimina el elemento al que apunta head.
    def erase_head()
      aux = @head[:prev]
      aux[:next] = nil
      @head = aux
    end

    #Elimina el elemento al que apunta tail.
    def erase_tail()
      aux = @tail[:next]
      aux[:prev] = nil
      @tail = aux
    end

    # Se incluye el metodo del mixin Enumerable
    # Se define como la iteración entre los valores de los nodos.
    def each # :yields: value
      aux = @tail
      while (aux != nil) do
        yield aux[:value]
        aux = aux.next
      end
    end

  end 

end
