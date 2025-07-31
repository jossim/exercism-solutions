module Luhn
  def self.valid?(string)
    string.gsub!(' ', '')

    return false if string.match(/\D/)

    numbers = string.chars
                    .map(&:to_i)
                    .reverse

    puts "\nNumbers: #{numbers.inspect}"

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

    puts "Doubled: #{doubled.inspect}"

    sum = doubled.sum
    puts "Sum: #{sum}\n\n"

    (sum % 10 == 0) && (sum > 0)
  end
end
