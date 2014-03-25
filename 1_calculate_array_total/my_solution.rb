# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
#
# Problem 1
# CREATE method named 'total'
# GET array of values
# SET an index variable equal to 0
# SET 'sum' equal to 0 
# WHILE index is less than array length
# ADD variable in current index position to sum
# increment index by 1
# ENDWHILE 
# RETURN final sum

# Problem 2
# CREATE method named 'sentence_maker'
# GET array of values
# CREATE variable called 'output' and store JOINed array, space delimited
# CAPITALIZE output
# return output


# 2. Initial Solution

# def total(array)
#  	i = 0
#  	sum = 0
#  	while i < array.length
#  		sum += array[i]
#  		i += 1
#  	end
#  	return sum
# end

# def sentence_maker(array)
#   output = array.join(" ").capitalize + "."
# end

# 3. Refactored Solution

# After reading that while statements aren't core for Ruby, I tried doing an array.each do statement instead, which looks cleaner
def total(array)
  sum = 0
  array.each do |num|
  	sum += num
  end
  return sum
end

# I thought this was as simple as it gets.  Made the variable name more unique
def sentence_maker(array)
  arrOut = array.join(" ").capitalize + "."
end


# 4. Reflection 
# Felt very free writing in Ruby.  It's so much easier than other languages and definitely my favorite.  
# Noticed that in Ruby it's really easy to write simple code pre-refactoring, which I like very much. 
# In previous statements, it became a habit to write while loops as they make a lot of sense to me, but now realizing that they can be cumbersome when compared to a simpler way of doing it like array.each do. Note to self to get used to defining that way as well.
	



