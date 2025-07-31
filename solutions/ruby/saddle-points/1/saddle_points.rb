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

  def saddle_points
    greatest_rowwise = greatest_in_rows
    least_columnwise = least_in_columns

    greatest_rowwise.filter do |row_points|
      least_columnwise.include? row_points
    end
  end

  def least_in_columns
    least_columnwise = []

    columns.each_index do |j|
      least = [[0, j]]
      columns[j].each_index do |i|
        if columns[j][i] < columns[least[0][1]][least[0][0]]
          least = [[i, j]]
        elsif columns[j][i] == columns[least[0][1]][least[0][0]]
          least << [i, j]
        end
      end
      least_columnwise += least
    end

    least_columnwise
  end

  def greatest_in_rows
    greatest_rowwise = []

    rows.each_index do |i|
      greatest = [[i, 0]]
      rows[i].each_index do |j|
        if rows[i][j] > rows[greatest[0][0]][greatest[0][1]]
          greatest = [[i, j]]
        elsif rows[i][j] == rows[greatest[0][0]][greatest[0][1]]
          greatest << [i, j]
        end
      end
      greatest_rowwise += greatest
    end

    greatest_rowwise
  end
end
