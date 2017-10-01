# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	unless is_valid_triangle(a,b,c)
		fail TriangleError
	end
	
	return :equilateral if(a == b && a == c)		
	return :isosceles if(a == c || b == c || a == b)	
	:scalene

	# arr = []
	# arr << a << b << c
	# uniqueElements = arr.uniq.size
	# return :equilateral if uniqueElements == 1
	# return :isosceles if uniqueElements == 2
	# :scalene

	# if(a == b)
	# 	return :equilateral if(a == c)
	# 	return :isosceles
	# end	
	# return :isosceles if(a == c || b == c)	
	# return :scalene
  
end

def is_valid_triangle(a,b,c)
	if(a <= 0 || b <= 0 || c <= 0)
		return false
	end

	if(a + b <= c || a + c <= b || c + b <= a)
		return false
	end
	true
end
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
