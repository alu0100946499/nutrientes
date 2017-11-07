class DLL

  attr_reader :head, :tail

  def initialize()
    @head, @tail = nil, nil
  end
  
  def empty()
    return true if (@head == nil && @tail == nil)
    false
  end

end
