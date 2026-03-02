=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

module EliudsEggs
  def self.egg_count(decimal_num)
    total_eggs = 0

    while decimal_num > 0
      total_eggs += decimal_num % 2
      decimal_num = decimal_num / 2
    end

    total_eggs
  end
end
