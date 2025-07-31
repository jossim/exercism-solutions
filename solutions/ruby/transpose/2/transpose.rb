module Transpose
  def self.transpose(input)
    return input if input.empty?

    rowwise = input.split("\n")
    max_length = rowwise.map(&:length).max

    rowwise.map! { |row| row.ljust(max_length, ' ').chars }

    columnwise = rowwise.transpose

    transposed_input = columnwise.map { |column| column.join }.join("\n").rstrip
    puts transposed_input.inspect

    transposed_input
  end
end
