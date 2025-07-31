class Nucleotide
  attr_reader :nucleotides

  def initialize(sequence)
    raise ArgumentError unless /^[ATGC]*$/.match? sequence

    @nucleotides = { 'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0 }

    sequence.chars.each { |nucleotide| @nucleotides[nucleotide] += 1 }
  end

  def self.from_dna(sequence)
    new(sequence)
  end

  def histogram
    nucleotides
  end

  def count(letter)
    nucleotides[letter]
  end
end
