class Triangle
  def initialize(sides)
    @sides = sides
  end

  def triangle?
    correct_sum = true

    @sides.each.with_index do |side_3, index|
      sides = @sides.reject.each_with_index { |_side, idx| idx == index }
      correct_sum = false unless sides.sum >= side_3
    end

    @sides.all?(&:positive?) and correct_sum
  end

  def equilateral?
    triangle? and (@sides.uniq.length == 1)
  end

  def isosceles?
    triangle? and @sides.uniq.length < 3
  end

  def scalene?
    triangle? and @sides.uniq.length == 3
  end
end
