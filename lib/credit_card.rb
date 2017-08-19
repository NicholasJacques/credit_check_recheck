class CreditCard
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def valid?
    sum_odd_digits % 10 == 0
  end

  private

  def sum_odd_digits
    counter = 0
    number.reverse.split('').reduce(0) do |total, digit|
      digit = digit.to_i

      if counter.odd?
        digit *= 2
      end
      
      if digit > 9
        digit = digit.to_s[0].to_i + digit.to_s[-1].to_i
      end
      
      counter += 1
      total + digit
    end
  end
end
