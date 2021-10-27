class FlattenArray
  def self.flatten(arr_params, arr_result = [])
    # arr_params.flatten.compact
     arr_params.each do |element|
      next if element.nil?
      if element.is_a?(Array)
        flatten(element, arr_result) 
      else
        arr_result << element
      end 
    end
    arr_result
  end
end