module Grains
  def self.square(square_number)
    raise ArgumentError if square_number < 1 || square_number > 64

    2**(square_number - 1)
  end

  def self.total
    2**64 - 1
  end
end
