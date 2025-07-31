module CollatzConjecture
  def self.steps(number)
    raise ArgumentError, 'Argument cannot be less than 1' if number < 1

    step = 0

    until number == 1
      number = number.even? ? number / 2 : 3 * number + 1
      step += 1
    end

    step
  end
end
