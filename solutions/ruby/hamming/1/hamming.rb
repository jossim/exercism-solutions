module Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError if strand1.length != strand2.length

    distance = 0

    (0...strand1.length).each { |i| distance += 1 if strand1[i] != strand2[i] }

    distance
  end
end
