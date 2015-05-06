module Enumerable
	
	def my_each
		for i in self 
			yield(i)
		end
		self
	end

	def my_each_with_index
		for i in self 
			yield(i,self.index(i) )
		end
		self
	end

	def my_select
		array = []
		self.my_each { |i| array << i if yield(i) }
		array	
	end

	def my_all?
		array = self.my_select {|i| yield(i) }
		  array == self ?  true : false 
	end

	def my_any?
		array = self.my_select { |i| yield(i) }
		!array.empty? 
	end

	def my_none?
		!self.my_any? { |i| yield(i)}
	end


	def my_count
		array = self.my_select { |i| yield(i) }
		array.length
	end


	def my_inject(value = nil)
		
		range = 0

		if value == nil
			value = self[0]	
			range = 1	
		else
			value 
		end
		
		for i in self[range..-1]
		value =	yield(value, i)
		end 
		value
	end

	
def my_map(&proc)
    
    array = []
    self.my_each { |i| array << proc.call(i) }
		array	
		

end



	#def my_all?
	#	array = []
	#	for i in self
	#		if yield(i)
	
	#			array << i
	#		end		
	#	end
	# if 	self == array
	# 	return true
	# 	else
	# 	false
	# end		
	#end


	

end




def multiply_elements(array)
	array.my_inject { |product,i| product * i }
end


#my_proc = Proc.new { |arg|  arg * 2}


#[1,2,3].each(&my_proc)

#puts [1,2,3].my_map_proc(&my_proc)

		
# puts multiply_elements([1,2,3,4])

