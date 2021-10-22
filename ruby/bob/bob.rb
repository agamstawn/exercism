class Bob
  def self.hey(str_params)
    results = "Whatever."
    #check & validate input string
    if str_params.upcase == str_params && str_params =~ /[A-Za-z]/ 
      results = "Whoa, chill out!"
    end
    #check question
    if str_params.strip.end_with?("?")
      results = "Sure."
    end
    if str_params.upcase == str_params && str_params =~ /[A-Za-z]/ && str_params.strip.end_with?("?")
      results = "Calm down, I know what I'm doing!"
    end
    if str_params.strip.length == 0
      results = "Fine. Be that way!"
    end
    results
  end
    
end