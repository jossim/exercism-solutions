class Squares
  def initialize(number)
    @n = number
  end

  def square_of_sum
    (@n * (@n + 1) / 2)**2
  end

  def sum_of_squares
    @n * (@n + 1) * (2 * @n + 1) / 6
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
