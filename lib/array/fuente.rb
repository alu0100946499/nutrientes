
  class Array
  
    def for_sort
      vector = Array.new(self)
      res = []
      for i in 0...vector.size do
        res << vector.delete(vector.min)
      end
      res
    end





  end
