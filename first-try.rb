class ThousandDigFib

  def initialize(digits)
    @digits = digits.to_i
    @fib = [1, 1]
  end

  def answer
    while @fib.last.to_s.length < @digits
      @fib << @fib.last + @fib[-2]
    end
    @fib.length
  end
end

puts "how many digits you want on the fib?"
digits = gets.strip
puts "crunching the nubmers..."
puts ThousandDigFib.new(digits).answer