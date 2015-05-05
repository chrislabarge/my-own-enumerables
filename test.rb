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





end