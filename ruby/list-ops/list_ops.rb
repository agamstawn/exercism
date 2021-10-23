class ListOps
	def self.arrays(arr_params)
		arr_params.length
	end
	def self.reverser(arr_params)
		arr_params.reverse
	end
	def self.concatter(firs_arr,second_arr)
		firs_arr+second_arr
	end
	def self.mapper(arr_params)
		arr_result=[]
		arr_params.each do |i|
			arr_result.push(yield(i))
		end
		arr_result
	end
	def self.filterer(arr_params,&code)
		result=[]
		arr_params.each {|i|  result<<i if code.call(i)}
		result
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