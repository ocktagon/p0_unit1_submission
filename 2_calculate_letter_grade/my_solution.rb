# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
# DEFINE get_grade method
# GET array of values
# Obtain 'sumScore' of numbers in array
# CREATE variable called 'avgScore', and store output of sum divided by array length
# CREATE case branches
# when 90..100 return A
# when 80..89 return B
# when 70..79 return C
# when 60..69 return D
# when 0..59 return F


# 2. Initial Solution

# def get_grade(array)
# # pop array until a total is derived
#   arr_size = array.length
#   i = 0
#   sumScore = 0
#   while i < arr_size
#     sumScore += array.pop
#     i += 1
#   end

# # Average the total by dividing total by original array.length
#   avgScore = sumScore / arr_size

# # Push new number into grade case logic 
#   case avgScore
#     when 90..100 then
#       return "A"
#     when 80..89 then
#       return "B"
#     when 70..79 then
#       return "C"
#     when 60..69 then
#       return "D"
#     when 0..59 then
#       return "F"
#   end
# end

# 3. Refactored Solution

def get_grade(array)
	sumScore = 0
	
	array.each do |num|
		sumScore += num
	end
	
	avgScore = sumScore / (array.length)

# Push new number into grade case logic 
  case avgScore
    when 90..100 then
      return "A"
    when 80..89 then
      return "B"
    when 70..79 then
      return "C"
    when 60..69 then
      return "D"
    when 0..59 then
      return "F"
  end
end


# 4. Reflection 
# Used most of what I learned from exercise 1 to use the array.each do loop to calculate the sum with less code.
# Really couldn't think of any more compact way to do the case logic. 
