class Changer
  attr_accessor :quarters, :dimes, :nickels, :pennies

  def print
    puts "Q: #{@quarters} D: #{@dimes} N: #{@nickels} P: #{@pennies}"
  end

  def quarters(amt)
    if amt.modulo(25).zero?
      @quarters = amt / 25
    else
      remainder = amt % 25
      @quarters = amt / 25
    end
    # return @quarters
    return remainder
  end

  def dimes(amt)
    if amt.modulo(10).zero?
      @dimes = amt / 10
    else
      remainder = amt % 10
      @dimes = amt / 10
    end
    #return @dimes
    return remainder
  end

  def nickels(amt)
    if amt.modulo(5).zero?
      @nickels = amt / 5
    else
      remainder = amt % 5
      @nickels = amt / 5
    end
    #return @nickels
    return remainder
  end

  def pennies(amt)
    @pennies = nickels(dimes(quarters(amt)))
  end
end
