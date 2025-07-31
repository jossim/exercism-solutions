class SumOfMultiples
  def initialize(*nums)
    @nums = nums
  end

  def to(up_to)
    (0...up_to).select do |multiple|
      @nums.any? do |num|
        num.zero? ? false : (multiple % num).zero?
      end
    end.sum
  end
end
