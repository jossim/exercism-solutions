class Sieve
  def initialize(number)
    @numbers = (2..number).to_a
  end

  def primes
    @numbers.each_with_index do |ele, idx|
      next unless @numbers[idx]

      (idx + ele..@numbers.length - 1).step(ele) { |index| @numbers[index] = nil }
    end

    @numbers.compact
  end
end
