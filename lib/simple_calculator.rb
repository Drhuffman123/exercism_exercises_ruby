class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  class UnsupportedOperation < ArgumentError
  end

  def self.check_data(first_operand, second_operand, operation)
    if first_operand.class != Integer
      raise ArgumentError.new
    end
    if second_operand.class != Integer
      raise ArgumentError.new
    end
    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation.new
    end
    if operation == "/" && second_operand == 0
      "Division by zero is not allowed."
    end
  end

  def self.calculate(first_operand, second_operand, operation)
    errors = check_data(first_operand, second_operand, operation)
    if errors == nil
      if operation == "+"
        "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      elsif operation == "*"
        "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
      elsif operation == "/" && second_operand != 0
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      end
    else
      errors
    end
  end
end
