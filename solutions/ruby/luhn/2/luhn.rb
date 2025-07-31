module Luhn
  def self.valid?(string)
    string.gsub!(' ', '')

    return false if string.match(/\D/)

    numbers = string.chars
                    .map(&:to_i)
                    .reverse

    return false if numbers.length < 2

    doubled = numbers.map.with_index do |v, i|
      if i.odd?
        if v * 2 > 9
          v * 2 - 9
        else
          v * 2
        end
      else
        v
      end
    end

    sum = doubled.sum

    (sum % 10 == 0)
  end
end
