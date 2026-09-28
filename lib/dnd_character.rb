=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter 
  def self.modifier(tbd)
    (tbd - 10)/2
  end

  def config_core()
    @strength = rand(18-3) + 3
    @dexterity = rand(18-3) + 3
    @constitution = rand(18-3) + 3
    @intelligence = rand(18-3) + 3
    @wisdom = rand(18-3) + 3
    @charisma = rand(18-3) + 3
  end  
  
  def strength
    @strength
  end
  
  def dexterity
    @dexterity
  end
  
  def constitution
    @constitution
  end

  def intelligence
    @intelligence
  end
  
  def wisdom
    @wisdom
  end
  
  def charisma
    @charisma
  end

  def constitution_modifier
    @constitution_modifier
  end

  def hitpoints
    @hitpoints
  end
  
  def initialize
    config_core()
    
    @constitution_modifier = ((@constitution - 10)/2).to_i
    @hitpoints = 10 + @constitution_modifier
  end
end
