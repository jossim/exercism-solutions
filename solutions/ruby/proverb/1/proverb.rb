class Proverb
  def initialize(*words, qualifier: nil)
    @words = words
    @qualifier = qualifier ? "#{qualifier} #{@words.first}" : @words.first
  end

  def to_s
    strings = []

    (0..@words.length - 2).each do |index|
      strings << "For want of a #{@words[index]} the #{@words[index + 1]} was lost."
    end

    strings << "And all for the want of a #{@qualifier}."
    strings.join("\n")
  end
end
