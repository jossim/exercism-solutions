=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

module EliudsEggs
  def self.egg_count(count)
    binary_numbers = []

    while count > 0
      binary_numbers << count % 2
      count = count / 2
    end

    binary_numbers.sum
  end
end
