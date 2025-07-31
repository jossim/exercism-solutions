class Triangle
  def initialize(sides)
    @sides = sides
  end

  def triangle?
    correct_sum = true
    sides_sum = @sides.sum

    @sides.each { |side| correct_sum = false unless (sides_sum - side) >= side }

    @sides.all?(&:positive?) and correct_sum
  end

  def equilateral?
    triangle? and @sides.uniq.length == 1
  end

  def isosceles?
    triangle? and @sides.uniq.length < 3
  end

  def scalene?
    triangle? and @sides.uniq.length == 3
  end
end
