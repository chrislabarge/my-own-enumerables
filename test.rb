require 'test/unit'
require './enumerable.rb'

class Tc_MyTest < Test::Unit::TestCase
	


	def test_my_each
		assert_equal [1,2,3,4].each { |e| puts e},
						  [1,2,3,4].my_each { |e| puts e}
	end

	def test_my_each_with_index
		assert_equal [1,2,3,4].each_with_index {|e,i| puts e; puts i}, 
		             [1,2,3,4].my_each_with_index {|e,i| puts e; puts i}
	end

	def test_my_select
		assert_equal [1,2,3,4].select {|i| i % 2 == 0},
								 [1,2,3,4].my_select { |i| i%2 == 0}

	end

	def test_my_all?
		assert_equal [1,2,3,4].all? { |i| i < 10 },
								 [1,2,3,4].my_all? { |i| i < 10}
	end

	def test_my_any?
		assert_equal [1,2,3,4].any? { |i| i < 10 },
								 [1,2,3,4].my_any? { |i| i < 10 }
	end

	def test_my_none?
		assert_equal [1,2,3,4].none? { |i| i < 10 },
								 [1,2,3,4].my_none? { |i| i < 10 }
	end

	def test_my_count
		assert_equal [1,2,3,4].count { |i| i < 10 },
								 [1,2,3,4].my_count { |i| i < 10 }
	end

	def test_my_map
		assert_equal [1,2,3,4].map { |i| i * 10},
								 [1,2,3,4].my_map { |i| i * 10 }
	


	end

	def test_my_inject
		assert_equal 	[1,2,3,4].inject(5) { |sum, i| sum + i },
								 [1,2,3,4].my_inject(5)	{ |sum, i| sum + i }
		assert_equal [5,2,3,4].inject { |prod,i| prod * i },
								 [5,2,3,4].my_inject { |prod, i| prod * i }						 
								 
	end

	def test_multiply_elements
		assert_equal [1,2,3,4].inject { |product, i| product * i },
		multiply_elements([1,2,3,4])
		
	end


	def test_my_map_with_proc
		my_proc = Proc.new { |arg| arg * 2 }
		assert_equal [1,2,3,4].map(&my_proc), 
								 [1,2,3,4].my_map(&my_proc)
		assert [1,2,3,4].my_map { |i| i * 10 }
	end

end