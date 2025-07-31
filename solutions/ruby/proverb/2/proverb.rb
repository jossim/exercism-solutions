class Proverb
  def initialize(*words, qualifier: '')
    @words = words
    @important_item = "#{qualifier} #{@words.first}".strip
  end

  def to_s
    @words.each_cons(2)
          .map { |first, second| "For want of a #{first} the #{second} was lost.\n" }
          .push(last_line)
          .join
  end

  def last_line
    "And all for the want of a #{@important_item}."
  end
end
