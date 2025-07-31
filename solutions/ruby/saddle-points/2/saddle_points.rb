class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows = string.split("\n").map { |row| row.split(' ').map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    points = []

    rows.each_index do |i|
      columns.each_index do |j|
        points << [i, j] if rows[i].max == columns[j].min
      end
    end

    points
  end
end
