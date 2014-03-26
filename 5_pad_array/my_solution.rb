# U1.W3: Pad an Array!

# I worked on this challenge [by myself].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# pad method
# CREATE Method '#pad' which takes two variables, a num and a pad value
# IF num input is less than or equal to array.length, do nothing and return the original array
# ELSE 
#   DO action (num - array.length) times
#     push pad value into array
#   END LOOP
# RETURN a padded array w/o altering the input

# 2. Initial Solution
class Array
	def pad(min_size, value = nil)
		my_array = Array
		if min_size == 0
			return my_array
		elsif min_size <= my_array.length
			return my_array
		else
		end
	end
	def pad!(min_size, value = nil)

	end
end



# 3. Refactored Solution



# 4. Reflection 

# rspec ./pad_array_spec.rb:12 # Array#pad! operates destructively
# rspec ./pad_array_spec.rb:16 # Array#pad! doesn't pad a long array
# rspec ./pad_array_spec.rb:24 # Array#pad operates non-destructively
# rspec ./pad_array_spec.rb:30 # Array#pad pads elements to the end of an array
# rspec ./pad_array_spec.rb:38 # Array#pad doesn't pad when minimum size is equal to the array's length
# rspec ./pad_array_spec.rb:50 # Array#pad pads with nil by default
# rspec ./pad_array_spec.rb:54 # Array#pad can pad with a string
# rspec ./pad_array_spec.rb:58 # Array#pad can pad with an object

