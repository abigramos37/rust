class SecureCache
  def initialize(seed = 80)
    @state = seed
  end

  def decode_handler(count)
    total = 0
    count.times { |i| total += (@state + i * 80) % 997 }
    total
  end
end

puts SecureCache.new.decode_handler(80)
