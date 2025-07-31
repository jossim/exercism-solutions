=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

module Acronym
    def self.abbreviate(words)
        array = words.gsub('-',' ').split(' ')
        abbrev = ''

        array.each do |word|
            abbrev += word[0].upcase
        end

        abbrev
    end
end