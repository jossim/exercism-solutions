module CollatzConjecture
  def self.steps(number)
    raise ArgumentError if number < 1

    step = 0

    until number == 1
      if number.even?
        number /= 2
      else
        number = 3 * number + 1
      end

      step += 1
    end

    step
  end
end
