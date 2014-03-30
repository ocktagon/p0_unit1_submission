# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# CREATE method called 'mode'
# ACCEPT array of strings or nums
# CREATE empty hash called ct_hash (For counting)
# CREATE empty hash called new_array (for output)
# FOR EACH element in the array
# UNLESS key with same value does exist, 
#    create new key value to hash
# END 
#    increment value count by 1
# END LOOP
# ct_index equals the highest value in the hash
# FOR EACH k,v in ct_hash
# push value into new_array if value = ct_index 
# END LOOP
# RETURN new_array



# 2. Initial Solution

# def mode(array)
	
# 	ct_hash = {}
# 	new_array = []

# 	array.each do | value |
# 		unless ct_hash.has_key?(value)
# 			ct_hash[value] = 0
# 		end
# 		ct_hash[value] += 1
# 	end
 
#   ct_index = ct_hash.values.max

#   ct_hash.each do |key,value|
#   	new_array << key if value == ct_index
#   end

#   return new_array

# end

# 3. Refactored Solution

def mode(array)
	# Create two empty containers for the count hash and the new array to be returned
	ct_hash = {}
	new_array = []
  # Loop to count how many of each thing I have.  Putting them into ct_hash as key/value pairs
	array.each do | value |
		ct_hash[value] = 0 unless ct_hash.has_key?(value)
		ct_hash[value] += 1
	end
  # After count is done, find the highest value and set as my point of reference (index)
  ct_index = ct_hash.values.max
  # add the corresponding key to the new_array as long as it equals the index
  ct_hash.each do |key,value|
  	new_array << key if value == ct_index
  end

  return new_array

end

# 4. Reflection 
# I'm very proud of the outcome of this, although not sure if it's the most efficient way to do it. 

# I could not get away from the idea that I would need at least two loops to run this - 
# The first loop needed to count how many of there were of each element, and 
# the 2nd loop needed to look at the count and push the highest one to a new array for output. 

# There might be some cool method to destructively alter the original array and convert it to a count, 
# but I ended up taking the route of creating a separate count.  Also, 
# I realized after research that a hash would be the perfect container for 
# storing the count information since it's pretty much a 1 to 1 relationship with 
# the source array's number in question.

# One challenge I had to do tons of research was for obtaining the highest value in the hash. 
# My first thought was to do something a reverse.sort of the hash to get the highest value key come first, 
# then I'd later do a loop to start from the first one, and keep on adding to the new array 
# if the next value did not go any lower than the first.  I did actually find a way to do the sort, 
# but ran into a problem where it really didn't serve the purpose I wanted because it broke the hash and 
# turned it into a array of arrays.  Rather than go this route, I then decided to simply not alter the hash at all - 
# I realized that if I can just get the maximum value in the hash, I was in business. 
# Thus, the one-liner code to find the values.max of the hash.  As they say KISS = Keep It Simple Stupid.  

# I also experimented with one-liner exception like conditions for this exercise, 
# which I think ultimately worked out well in two places: 
# The first loop increments the count every time it sees an element, 
# unless the element never existed.  In that exception, it creates a new key 
# with a value of zero so it is set up to start counting on it.

# The 2nd loop assumes that a new key will be added to the output only 
# if the value of the key is the highest value in the earlier count round up.

# Comparing the original code and refactored code, there really isn't much difference.
# The one-liner exceptions and the 1-2 line loops really keep the code compact, and 
# I honestly couldn't find much to refactor.  I think the only way to refactor this to less
# is change the way to solve the problem.  As long as two loops are used, I think this
# is pretty much as efficient as it gets.

# Again, not sure if it's the most efficient solution, but it still solves the problem. 
