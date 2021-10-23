class BeerSong
  def self.first_row(value)
  	check_No_more = value > 0? value.to_s : 'No more' 
  	check_no_more = value > 0? value.to_s : 'no more' 

  	first_result = check_No_more+ ' bottle'+check_s(value)+ ' of beer on the wall, '+check_no_more+ ' bottle'+check_s(value)+' of beer.'
  end

  def self.last_row(value)
    if value == 0 
      return "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
    count = value - 1
    check_it = value > 1 ? 'one' : 'it'
    check_no_more = value > 1 ? count.to_s : 'no more'

    second_result = "Take "+check_it+" down and pass it around, "+check_no_more+" bottle"+check_s(count)+" of beer on the wall.\n"
  end

  def self.check_s(params_value)
	params_value == 1 ? '' : 's'  	
  end

  def self.recite(start, count)
    result = ""
    position = start
    count.times do
      result = result + "#{self.first_row(position)}\n#{self.last_row(position)}\n"
      position -= 1
    end
    return result.chop
  end
end