=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle
  # @sides = Tuple.new
  # @valid = false

  def initialize(sides)
    @sides = sides
    @valid = valid_sides?(sides)
  end

  def valid_sides?(sides)
    side0 = sides[0]
    side1 = sides[1]
    side2 = sides[2]

    if @sides[0] == 0 && @sides[1] == 0 && @sides[2] == 0
      false
    else
      (side0 > 0 && side1 > 0 && side2 > 0) &&
      (side0 + side1 >= side2) &&
      (side1 + side2 >= side0) &&
      (side2 + side0 >= side1)
    end
  end

  def equilateral?
    if @valid # @sides[0] == 0 && @sides[1] == 0 && @sides[2] == 0
      false
    else
      @sides[0] == @sides[1] && @sides[0] == @sides[2]
    end
  end

  def isosceles?
    (@sides[0] == @sides[1]) ||
      (@sides[1] == @sides[2]) ||
      (@sides[2] == @sides[0])
  end

  def scalene?
    (@sides[0] != @sides[1]) &&
      (@sides[1] != @sides[2]) &&
      (@sides[2] != @sides[0])
  end
end

puts Triangle.new([2, 2, 2]).equilateral?
