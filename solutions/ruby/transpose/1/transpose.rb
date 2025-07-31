module Transpose
  def self.transpose(input)
    return input if input.empty?

    max_length = 0

    rowwise = input.split("\n")
    rowwise.each { |row| max_length = row.length if row.length > max_length }

    rowwise.map! { |row| row.ljust(max_length, ' ').split('') }

    columnwise = Array.new(rowwise[0].length) { [] }

    rowwise.each_index do |i|
      rowwise[i].each_index do |j|
        columnwise[j][i] = rowwise[i][j]
      end
    end

    columnwise.map(&:join).join("\n").rstrip
  end
end
