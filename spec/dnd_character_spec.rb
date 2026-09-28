# frozen_string_literal: true

require 'rspec'
require 'dnd_character'

module Helpers
  BASE_HITPOINTS = 10
  def attributes
    %i[strength dexterity constitution intelligence wisdom charisma]
  end
end

Rspec.describe DndCharacter do
  include Helpers
  context 'test_ability_modifier_for_score' do
    it '3_is__4' do
      # assert_equal(-4, DndCharacter.modifier(3))
      expect(DndCharacter.modifier(3)).to be -4
    end

    it '4_is__3' do
      # assert_equal(-3, DndCharacter.modifier(4))
      expect(DndCharacter.modifier(4)).to be -3
    end

    it '5_is__3' do
      # assert_equal(-3, DndCharacter.modifier(5))
      expect(DndCharacter.modifier(5)).to be -3
    end

    it '6_is__2' do
      # assert_equal(-2, DndCharacter.modifier(6))
      expect(DndCharacter.modifier(6)).to be -2
    end

    it '7_is__2' do
      # assert_equal(-2, DndCharacter.modifier(7))
      expect(DndCharacter.modifier(7)).to be -2
    end

    it '8_is__1' do
      # assert_equal(-1, DndCharacter.modifier(8))
      expect(DndCharacter.modifier(8)).to be -1
    end

    it '9_is__1' do
      # assert_equal(-1, DndCharacter.modifier(9))
      expect(DndCharacter.modifier(9)).to be -1
    end

    it '10_is_0' do
      # assert_equal(0, DndCharacter.modifier(10))
      expect(DndCharacter.modifier(10)).to be 0
    end

    it '11_is_0' do
      # assert_equal(0, DndCharacter.modifier(11))
      expect(DndCharacter.modifier(11)).to be 0
    end

    it '12_is_1' do
      # assert_equal(1, DndCharacter.modifier(12))
      expect(DndCharacter.modifier(12)).to be 1
    end

    it '13_is_1' do
      # assert_equal(1, DndCharacter.modifier(13))
      expect(DndCharacter.modifier(13)).to be 1
    end

    it '14_is_2' do
      # assert_equal(2, DndCharacter.modifier(14))
      expect(DndCharacter.modifier(14)).to be 2
    end

    it '15_is_2' do
      # assert_equal(2, DndCharacter.modifier(15))
      expect(DndCharacter.modifier(15)).to be 2
    end

    it '16_is_3' do
      # assert_equal(3, DndCharacter.modifier(16))
      expect(DndCharacter.modifier(16)).to be 3
    end

    it '17_is_3' do
      # assert_equal(3, DndCharacter.modifier(17))
      expect(DndCharacter.modifier(17)).to be 3
    end

    it '18_is_4' do
      # assert_equal(4, DndCharacter.modifier(18))
      expect(DndCharacter.modifier(18)).to be 4
    end
  end

  context 'test_random_character_stats' do
    it 'eg' do
      100.times do
        character = DndCharacter.new
        allowed_range = (3..18)
        expected_hitpoints = BASE_HITPOINTS +
                             DndCharacter.modifier(character.constitution)
        informative_message = "The character's %s must be within %s"
        attributes.each do |attribute|
          # assert_includes allowed_range, character.send(attribute),
          #                 format(informative_message, attribute, allowed_range)
          expect(character.send(attribute), format(informative_message, attribute, allowed_range)).to include allowed_range 
        end
        informative_message = "The character's %s must be %s"
        # assert_equal expected_hitpoints, character.hitpoints,
        #              format(informative_message, 'hitpoints', expected_hitpoints)
        expect(format(informative_message, 'hitpoints', expected_hitpoints)).to eq expected_hitpoints, character.hitpoints
      end
    end
  end

  context 'test_stats_calculated_once' do
    it 'eg' do
      informative_message = <<~EXPLAIN
        The character's %<attribute>s must not change if called more than once.
        It was %<first>s, is now %<second>s.
      EXPLAIN
      100.times do
        character = DndCharacter.new
        (attributes << :hitpoints).each do |attribute|
          first = character.send(attribute)
          second = character.send(attribute)
          # assert_equal first, second,
          #              format(informative_message, attribute: nil, first: nil, second: nil)
          expect(format(informative_message, attribute: nil, first: nil, second: nil)).to eq first, second
        end
      end
    end
  end
end
