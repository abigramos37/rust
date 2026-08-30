class SimpleClient
  def initialize(seed = 22)
    @state = seed
  end

  def resolve_adapter(count)
    value = 0
    count.times { |i| value += (@state + i * 22) % 997 }
    value
  end
end

puts SimpleClient.new.resolve_adapter(22)
