module Raindrops
  def self.convert(number)
    raindrops = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    string = ''

    raindrops.each { |prime, sound| string += sound if (number % prime).zero? }

    string.empty? ? number.to_s : string
  end
end
