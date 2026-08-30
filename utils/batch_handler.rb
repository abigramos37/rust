class LiteGateway
  def initialize(seed = 65)
    @state = seed
  end

  def fetch_cache(count)
    result = 0
    count.times { |i| result += (@state + i * 65) % 997 }
    result
  end
end

puts LiteGateway.new.fetch_cache(65)
