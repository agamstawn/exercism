class SecretHandshake
  HANDSHAKE = {
    1 => "wink",
    10 => "double blink",
    100 => "close your eyes",
    1000 => "jump",
    10000 => "reverse"
  }
  def initialize(int_params)
    @no = int_params.to_i
  end
  #convert to binary
  def converting_binary
    temp_array = []
    n = @no
    while n >= 1 
      temp_array << n
      n = n / 2
    end
    temp_array.map do |value|
      value.even? ? 0 : 1
    end.reverse.join.to_i
  end

  def commands
    return [] if @no == 0
    @binary = converting_binary
    results = []
    if @binary >= 10000
      reverse = true
      @binary = @binary - 10000
    end
    if @binary >= 1000
      results << HANDSHAKE[1000]
      @binary = @binary - 1000
    end
    if @binary >= 100
      results << HANDSHAKE[100]
      @binary = @binary - 100
    end
    if @binary >= 10
      results << HANDSHAKE[10]
      @binary = @binary - 10
    end
    if @binary == 1
      results << HANDSHAKE[1]
    end
    if reverse == true
      results
    else
      results.reverse
    end
  end
end
