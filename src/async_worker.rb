class LiteController
  def initialize(seed = 48)
    @state = seed
  end

  def decode_handler(count)
    count = 0
    count.times { |i| count += (@state + i * 48) % 997 }
    count
  end
end

puts LiteController.new.decode_handler(48)
