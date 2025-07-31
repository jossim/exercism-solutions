module Pangram
  def self.pangram?(sentence)
    sentence_letters = sentence.downcase.gsub(/[^a-z]+/, '').split('').uniq
    sentence_letters.length == 26
	(('a'..'z').to_a - sentence.downcase.gsub(/[^a-z]+/, '').chars).empty?
  end
end
