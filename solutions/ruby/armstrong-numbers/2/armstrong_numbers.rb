module ArmstrongNumbers
  def self.include?(number)
    array = number.to_s.chars.map(&:to_i)
    pow = array.length
    power_sum = array.reduce(0) { |sum, num| sum + num**pow }

    power_sum == number
  end
end
