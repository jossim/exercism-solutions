class Anagram
  def initialize(word)
    @word = word.downcase
    @sorted = @word.chars.sort.join
  end

  def match(word_list)
    word_list.select { |word| anagram? word }
  end

  def anagram?(word)
    word.downcase.chars.sort.join == @sorted and word.downcase != @word
  end
end
