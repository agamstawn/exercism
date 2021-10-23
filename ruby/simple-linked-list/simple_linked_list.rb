class Element
  attr_accessor :datum, :next
 
  def initialize(datum)
    @datum = datum
  end
end

class SimpleLinkedList
  
  def initialize(array_params=nil)
    @elements = []

    if array_params 
	    array_params.to_a.each do |arr| 
	    	push(Element.new(arr))
	    end
	end
  end

  def push(element)
    @elements.unshift(element)
    self
  end

  def pop
    @elements.shift
  end

  def to_a
    @elements.map(&:datum)
  end

  def reverse!
    @elements.reverse!
    self
  end

end

