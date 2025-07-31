class Series
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(series_length)
    raise ArgumentError if series_length > @numbers.length
    @numbers.split('').each_cons(series_length).map(&:join)
  end
end
