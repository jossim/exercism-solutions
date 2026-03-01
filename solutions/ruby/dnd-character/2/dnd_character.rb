=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  attr_reader :constitution, :strength, :dexterity, :intelligence, :wisdom, :charisma

  def self.modifier(num)
    @@modifier_num = ((num - 10)/2).floor
  end

  def initialize
    # Your code here
    @constitution = sum_rolls
    @strength = sum_rolls
    @dexterity = sum_rolls
    @intelligence = sum_rolls
    @wisdom = sum_rolls
    @charisma = sum_rolls
  end

  def hitpoints
    10 + self.class.modifier(@constitution)
  end

  def roll
    rand(6) + 1
  end

  def top_3_roll
    rolls = [roll, roll, roll, roll].sort!
    rolls.delete_at(0)
    rolls
  end

  def sum_rolls
    top_3_roll.sum
  end
end
