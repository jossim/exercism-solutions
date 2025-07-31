class Phrase
  def initialize(words)
    @words = words.downcase
                  .gsub(/[.!@#$%^&:"]+/, '')
                  .gsub(/[,\s]+/, ' ')
                  .split(' ')
  end

  def word_count
    counts = {}

    @words.each do |word|
      word.gsub!(/^("|')|("|')$/, '')
      if counts[word]
        counts[word] += 1
      else
        counts[word] = 1
      end
    end
    counts
  end
end
