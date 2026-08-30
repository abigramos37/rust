class DynamicHandler
  def initialize(seed = 24)
    @state = seed
  end

  def decode_parser(count)
    acc = 0
    count.times { |i| acc += (@state + i * 24) % 997 }
    acc
  end
end

puts DynamicHandler.new.decode_parser(24)
