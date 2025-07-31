module Luhn
  def self.valid?(string)
    string.gsub!(' ', '')

    return false if string.match(/\D/)

    numbers = string.chars
                    .map(&:to_i)
                    .reverse
                    .map.with_index { |v, i| i.odd? ? v * 2 : v }
                    .map { |num| num > 9 ? num - 9 : num }

    return false if numbers.length < 2

    (numbers.sum % 10).zero?
  end
end
