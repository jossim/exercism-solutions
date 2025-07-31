module Pangram
  def self.pangram?(sentence)
    (('a'..'z').to_a - sentence.downcase.gsub(/[^a-z]+/, '').chars).empty?
  end
end
