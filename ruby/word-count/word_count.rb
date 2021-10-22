class Phrase
  def initialize(inp_params)
    cleaned_input = inp_params.gsub(/[^a-z0-9'\s]/i, ' ')
    @results = {}

    cleaned_input.split(" ").each do |word|
      key = word.downcase.delete_prefix("'").delete_suffix("'").delete(" ")
      if @results[key] == nil
        @results[key] = 1
      else
        @results[key] = @results[key] + 1
      end
    end 
  end  

  def word_count
    @results
  end
end