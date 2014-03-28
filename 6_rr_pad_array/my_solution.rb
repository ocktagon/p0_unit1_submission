# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself].



# 1. First Person's solution I liked  Christiane Kammerl
#    What I learned from this solution
# I was blown away with the efficiency of this code.  It's just so clean.  
# I found a lot of similarities between my code and hers in pad 1, with the additional trick of not even having to use an else statement.  Doing more with less.
# What really surprised me was that by reversing the sequence of her method definitions she made pad just clone self and call into the same code previously defined.  This reducees her code by roughly half, making it really fast.  Liked what she did here a lot. 

# Copy solution here:


#  class Array 
# 		def pad!(min, x = nil)
# 		len = self.length
# 		if len < min
# 			pad_num = (min - len)
# 			pad_num.times do self.push(x) end
# 		end 
# 		return self
# 	end


# 	def pad(min, x = nil)	
# 		padded_arr = self.clone
# 		padded_arr.pad!(min, x)
# 		return padded_arr
# 	end
# end




# 2. Second Person's solution I liked Clark Hinchcliff
#    What I learned from this solution
# I was surprised at the simplicity by just having implied logic.  No mention of zeros, no mention of if statements.
# Just a mention of padding until a certain condition is satisifed, otherwise just output as is.  Very clean and nice.  Like this a lot. 
# Copy solution here:


# class Array
# 	def pad(min_size, optional_value = nil)
# 		array_clone = self.clone
# 		array_clone << optional_value until array_clone.length >= min_size
# 		return array_clone
# 	end

# 	def pad!(min_size, optional_value = nil)
# 		self << optional_value until self.length >= min_size
# 		return self
# 	end
# end


# 3. My original solution:

# class Array
	
# 	def pad(min_size, pad_value = nil)

# 		my_array = [] + self
#   	pad_count = min_size - my_array.length

#   	unless pad_count > 0
#   		return my_array 
#   	else 
#   		pad_count.times {my_array << pad_value}
#   		return my_array
#   	end

# 	end


# 	def pad!(min_size, pad_value = nil)
	  
# 	  pad_count = min_size - self.length
  	
#   	unless pad_count > 0
#   		return self 
#   	else 
#   		pad_count.times {self << pad_value}
#   		return self
#   	end

# 	end

# end

# 4. My refactored solution:


class Array

	def pad!(min, pad = nil)
		self << pad until min <= self.length
		return self
	end

	def pad(min, pad = nil)
		p_clone = self.clone
		p_clone.pad!(min, pad)
	end

end



# 5. Reflection
# the two key learnings I borrowed were:
# 1. the zen-like code from Clark using references to self with the until statement. The general approach of starting with the idea that there will always be output, and taking a minimalist approach in altering the output along the way where necessary was my biggest lesson here. 
# 2. the creative approach of defining a subset of common code building blocks in pad! first, and then just reusing it in the pad method variant.  
# These two tricks put together pretty much allows me to reduce the code to 2 lines each.  Can't get much cleaner than that!
# It was a huge learning to learn some tricks of the trade in this lesson.  In my next new challenge, I will try to avoid using if statements and multi-line conditionals as much as possible and reach my true zen. 




