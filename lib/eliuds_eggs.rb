=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end
class EliudsEggs
  def self.egg_count(number)
    arr_eggs = []
    number.to_s(2).chars.map.with_index do |x, i|
      egg_qty = x.to_i*(2**i)
      if egg_qty > 0
        arr_eggs << egg_qty
      end
    end
    arr_eggs.size
  end
end
