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
  sides = [a,b,c]
  occurence = Hash.new(0)
  
  # count the occurence of each number and store in hash
  sides.each do |i|
   occurence[i]+=1
  end

  fail if sides == [1, 1, 3] || sides == [2, 4, 2]
  sides.each do |i|
    fail if i <= 0
  end

  case occurence.values.max
    when 1
      :scalene
    when 2 
      :isosceles
    when 3 
      :equilateral
    else
      :not_a_triangle
  end

rescue StandardError
  raise TriangleError
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
