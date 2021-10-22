class Raindrops
  def Raindrops.convert(number_params)
    result = ""
    
    if number_params % 3 == 0
      result = result + "Pling"
    end
    if number_params % 5 == 0
      result = result + "Plang"
    end
    if number_params % 7 == 0
      result = result + "Plong"
    end
  
    if result.length > 0
      return result
    else
      return "#{number_params}"
    end
  end
end