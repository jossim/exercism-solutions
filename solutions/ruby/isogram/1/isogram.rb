module Isogram
  def self.isogram?(input)
    input_array = input.downcase.gsub(/[\W-]+/, '').chars
    input_array == input_array.uniq
  end
end
