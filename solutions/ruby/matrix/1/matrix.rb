# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.

class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = string.split("\n").map { |row| row.split(' ').map(&:to_i) }
    @columns = Array.new(@rows[0].length) { [] }

    @rows.each_index do |i|
      @rows[i].each_index do |j|
        @columns[j][i] = rows[i][j]
      end
    end
  end
end
