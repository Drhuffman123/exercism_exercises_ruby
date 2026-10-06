=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end
class Squares
  def initialize(num)
    @num = num
  end
  
  def square_of_sum
    if @num == 1
      1
    else
      (1..@num).sum ** 2
    end
  end

  def sum_of_squares
    if @num == 1
      1
    else
      (1..@num).sum { |k| k ** 2 }
    end
  end

  def difference # _of_squares
    square_of_sum - sum_of_squares
  end
end
