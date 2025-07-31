class Series
  def initialize(numbers)
    @numbers = numbers
  end

  def slices(series_length)
    length = @numbers.length

    raise ArgumentError if series_length > length

    array = []
    index = 0

    while index + series_length <= length
      array.push(@numbers[index, series_length])
      index += 1
    end

    array
  end
end
