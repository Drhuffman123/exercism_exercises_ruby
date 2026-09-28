=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  def self.modifier
    # Your code here
  end

  def config_core()
    @strength = Random(24)
    @dexterity = Random(24)
    @constitution = Random(24)
    @intelligence = Random(24)
    @wisdom = Random(24)
    @charisma = Random(24)
  end

  def initialize
    config_core()
    
    @constitution_modifier = ((@constitution - 10)/2).to_i
    @hitpoints = 10 + @constitution
  end
end
  
