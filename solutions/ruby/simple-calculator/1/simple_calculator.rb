class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    if first_operand.class != Integer || second_operand.class != Integer
      raise ArgumentError
    end

    result = if operation == '+'
               first_operand + second_operand
             elsif operation == '*'
               first_operand * second_operand
             elsif operation == '/'
              begin
               first_operand / second_operand
              rescue ZeroDivisionError => e
                return 'Division by zero is not allowed.'
              end
             else
              raise UnsupportedOperation
             end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end

  class UnsupportedOperation < StandardError; end
end
