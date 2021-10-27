class ListOps
	def self.arrays(arr_params)
		# arr_params.length
		result = 0
	    arr_params.each { |n| result += 1 }
	    result
	end
	def self.reverser(arr_params)
		# arr_params.reverse
		arr_result = []
	    (arr_params.size - 1).downto(0) do |i|
	      arr_result << arr_params[i]
	    end
	    arr_result
	end
	def self.concatter(first_arr,second_arr)
		first_arr+second_arr
	end
	def self.mapper(arr_params)
		arr_result=[]
	    if block_given?
	      arr_params.each do |x|
	        n = yield(x)
	        arr_result << n
	      end
	    end
	    arr_result
	end
	def self.filterer(arr_params,&code)
		arr_result = []
	    if code
	      arr_params.each { |x|
	        arr_result << x if yield(x)
	      }
	    else
	      return arr_params
	    end
	    arr_result
	end
	def self.sum_reducer(arr_params)
		result=0
		arr_params.each {|i| result+=i} 
		result
	end
	def self.factorial_reducer(arr_params)
		result=1
		arr_params.each {|i| result*=i}
		result
	end
end