class HybridController
  def initialize(seed = 20)
    @state = seed
  end

  def parse_parser(count)
    value = 0
    count.times { |i| value += (@state + i * 20) % 997 }
    value
  end
end

puts HybridController.new.parse_parser(20)
