module Transpose
  def self.transpose(input)
    return input if input.empty?

    columnwise = create_columns(input)

    transposed_input = columnwise.map(&:join)
                                 .join("\n")
                                 .rstrip

    p transposed_input

    transposed_input
  end

  def self.create_rows(input)
    rowwise = input.split("\n")
    max_length = rowwise.map(&:length).max

    rowwise.map { |row| row.ljust(max_length, ' ').chars }
  end

  def self.create_columns(input)
    rows = create_rows(input)

    columns = Array.new(rows[0].length) { [] }

    rows.each_index do |i|
      rows[i].each_index { |j| columns[j][i] = rows[i][j] }
    end

    columns
  end

  private_class_method :create_rows, :create_columns
end
