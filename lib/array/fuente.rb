
  class Array
  
    def for_sort
      vector = Array.new(self)
      res = []
      for i in 0...vector.size do
        res << vector.delete(vector.min)
      end
      res
    end

    def each_sort
      vector = Array.new(self)
      res = []
      vector.each{
        min = vector.min
        res << min
        vector[vector.index(min)] = Alimento::MAX
      }
      res
    end

  end
