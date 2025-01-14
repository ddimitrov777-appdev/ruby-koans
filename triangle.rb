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
if [a,b,c].include? 0
  raise TriangleError, "can't have zero"
end

if [a, b, c].any? { |n| n < 0 } 
  raise TriangleError, "can't have negative sides"
end

if a + b <= c || b + c <= a || a + c <= b
  raise TriangleError, "sum of any two sides must be greater than third"
end


  if a == b && b == c
    return :equilateral
  end
  if (a == b && a != c) || (a == c && a != b) || (b == c && b != a)
  # WRITE THIS CODE
   return :isosceles
  end

  if a != b && a != c && b != c
   return :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
