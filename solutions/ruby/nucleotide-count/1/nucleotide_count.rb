class Nucleotide
  attr_reader :nucleotides

  def initialize(sequence)
    @nucleotides = { 'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0 }

    sequence.chars.each do |nucleotide|
      raise ArgumentError if @nucleotides[nucleotide].nil?

      @nucleotides[nucleotide] += 1
    end
  end

  def self.from_dna(sequence)
    Nucleotide.new(sequence)
  end

  def histogram
    nucleotides
  end

  def count(letter)
    nucleotides[letter]
  end
end
