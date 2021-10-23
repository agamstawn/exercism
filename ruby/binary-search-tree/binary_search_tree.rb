class Bst
  attr_accessor :data, :left, :right
  
  def initialize(data_params)
    @data = data_params
  end

  def insert(data_params)
    @data < data_params ? insert_right(data_params) : insert_left(data_params)
  end

  def insert_left(data_params)
    @left ? @left.insert(data_params) : @left = Bst.new(data_params)
  end

  def insert_right(data_params)
    @right ? @right.insert(data_params) : @right = Bst.new(data_params)
  end

  def each(&block)
    return enum_for(:each) unless block_given?
    @left.each(&block) if @left
    block.call(data)
    @right.each(&block) if @right
  end
end