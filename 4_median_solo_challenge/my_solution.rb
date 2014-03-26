# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# CREATE method 'median' which takes an array as input
# sort array to alpha-ascending or number num-ascending
# IF array's length is odd, return array[length divided by 2 minus 1]
# ELSE 
#   Find array value of length+1 divided by 2 rounded down to integer
#   ADD that value with the next value in position to create a sum
#   Divide the sum by 2 and convert to float to find median
#   RETURN the median


# 2. Initial Solution
# def median(array)
# 	array.sort!
# 	if array.length.odd?
# 		return array[array.length/2]
# 	else
# 		firstValue = (array.length+1)/2
# 		sum = (array[firstValue-1] + array[firstValue])
# 		return sum/2.to_f
# 	end
# end



# 3. Refactored Solution

def median(array)
	array.sort!
	midVar = (array.length + 1) / 2
	if array.length.odd?
		return array[midVar - 1]
	else
		return (array[midVar - 1] + array[midVar])/2.to_f
	end
end



# 4. Reflection 
# This exercise took a lot more time than expected, mostly because of two reasons -
# 1. I didn't realize that array.sort needed the exclamation mark at the end to make the change persist
# 2. I misrepresented position of the median value vs. it's position in the array.  Took a while to figure out that I only needed to subtract, not add to the value I came up with.
# It felt good that I got the bonus question for the strings automatically right since I was mainly dealing with returning the value in a position.  I think this code would fail if I had an even number length string array though.  

