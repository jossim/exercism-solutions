class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (0...limit).select do |multiple|
      @factors.any? do |factor|
        factor.zero? ? false : (multiple % factor).zero?
      end
    end.sum
  end
end
