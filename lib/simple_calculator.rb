class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  
  class Unsupport < ArgumentError
  end

  def self.calculate(first_operand, second_operand, operation)
    if first_operand.class != Integer
      raise ArgumentError.new
    end
    if second_operand.class != Integer
      raise ArgumentError.new
    end
    if !ALLOWED_OPERATIONS.include?(operation)
      raise Unsupport.new
    end
    if operation == "*"
      "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
    elsif operation == "/"
      if second_operand == 0
        "Division by zero is not allowed."
      else
        "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      end
    else # operation == "+"
      "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
    end
  end
end
