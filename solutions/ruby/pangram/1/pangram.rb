module Pangram
  def self.pangram?(sentence)
    sentence_letters = sentence.downcase.gsub(/[^a-z]+/, '').split('').uniq
    sentence_letters.length == 26
  end
end
