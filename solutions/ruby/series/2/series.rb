class Series
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(series_length)
    length = @numbers.length

    raise ArgumentError if series_length > length

    @numbers.split('').each_cons(series_length).map(&:join)
  end
end
