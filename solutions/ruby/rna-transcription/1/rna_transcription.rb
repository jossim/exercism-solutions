module Complement
  KEY = { G: 'C', C: 'G', T: 'A', A: 'U' }.freeze

  def self.of_dna(sequence)
    sequence.chars.reduce('') { |new_sequence, c| new_sequence + KEY[c.to_sym] }
  end
end
