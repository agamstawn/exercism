class Integer
  LIST_ROMAN = ["I", "V", "X", "L", "C", "D", "M"]

  def convert_to_roman(value, index)
    "" if value == 0
    output = LIST_ROMAN[index]
    if value == 4
      output + LIST_ROMAN[index + 1]
    elsif value == 5
      LIST_ROMAN[index + 1]
    elsif value == 9
      output + LIST_ROMAN[index + 2]
    elsif value > 5
      LIST_ROMAN[index + 1] + (output * (value - 5))
    else
      output * value
    end
  end
 
  def to_roman
    values = self.to_s.chars.reverse.map { |c| c.to_i }
    result = ""
    values.each.with_index do |val, index|
      result = convert_to_roman(val, index * 2) + result
    end
    result
  end
end
