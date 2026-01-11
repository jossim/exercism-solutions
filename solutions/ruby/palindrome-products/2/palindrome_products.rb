=begin
Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
`palindrome_products_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/palindrome-products` directory.
=end

class Palindromes
  attr_accessor :largest, :smallest

  def initialize(max_factor:, min_factor: 1)
    if min_factor > max_factor
      raise ArgumentError.new("min must be <= max")
    end

    @largest = Palindrome.new
    @smallest = Palindrome.new
    @palindroms = {}
    @max = max_factor
    @min = min_factor
  end

  def to_s
    "@largest=#{@largest}; @smallest=#{@smallest}; @palindroms=#{@palindroms}"
  end

  def generate
    puts "\n"
    (@min..@max).each do |i|
      j = i
      while j <= @max
        num = j*i
        str = num.to_s


        if str == str.reverse

          if @palindroms[str]
            @palindroms[str].add_factors([i,j])
          else
            pal = Palindrome.new(value: num)
            pal.add_factors([i,j])

            @palindroms[str] = pal
            @smallest = @palindroms[str] unless @smallest.value
            @largest = pal unless @largest.value
          end

          @smallest = @palindroms[str] if num < @smallest.value
          @largest = @palindroms[str] if num > @largest.value
        end
        j += 1
      end
    end
  end
end


class Palindrome
  attr_accessor :value, :factors

  def initialize(value: nil)
    @value = value
    @factors = []
  end

  def to_s
    "@value=#{@value}; @factors=#{@factors}"
  end

  def add_factors(factors_to_add)
    @factors << factors_to_add
  end
end
