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

	 puts [1,2,3,4].my_none? { |i| i > 10 }
