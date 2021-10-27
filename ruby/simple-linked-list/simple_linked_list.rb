class Element
  attr_accessor :datum, :next
 
  def initialize(datum)
    @datum = datum
  end
end

class SimpleLinkedList
  
  def initialize(array_params=nil)
    if array_params 
	    array_params.to_a.each do |arr| 
	    	push(Element.new(arr))
	    end
	end
  end

  def push(element)
    # @elements.unshift(element)
    element.next = @head
    @head = element
    self
  end

  def pop
    # @elements.shift
    return if @head == nil
    element = @head
    @head = element.next
    element
  end

  def to_a
    # @elements.map(&:datum)
    temp_elements.map(&:datum)
  end

  def reverse!
    # @elements.reverse!
    elements = temp_elements
    @head = nil
    elements.each{|element| push(element)}
    self
  end

  private
  
  def temp_elements
    return [] if @head == nil
    element = @head
    arr_element = []
    while element do 
      arr_element << element
      element = element.next
    end
    arr_element
  end

end
