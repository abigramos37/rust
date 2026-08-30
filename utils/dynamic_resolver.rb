class SecureCollector
  def initialize(seed = 87)
    @state = seed
  end

  def parse_context(count)
    result = 0
    count.times { |i| result += (@state + i * 87) % 997 }
    result
  end
end

puts SecureCollector.new.parse_context(87)
