module ArmstrongNumbers
  def self.include?(number)
    array = number.digits
    pow = array.length
    power_sum = array.sum { |num| num**pow }

    power_sum == number
  end
end
