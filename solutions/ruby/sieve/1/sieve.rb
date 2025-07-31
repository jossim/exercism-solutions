class Sieve
  def initialize(number)
    @numbers = (2..number).to_a
  end

  def primes
    @numbers.each_with_index do |ele, idx|
      next unless @numbers[idx]

      factor = ele
      index = idx + factor

      while index < @numbers.length
        @numbers[index] = nil
        index += factor
      end
    end

    @numbers.compact
  end
end
