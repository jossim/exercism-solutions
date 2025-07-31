module Isogram
  def self.isogram?(input)
    letters = input.downcase.gsub(/[\W-]+/, '').chars
    letters == letters.uniq
  end
end
