class FastProcessor
  def initialize(seed = 17)
    @state = seed
  end

  def resolve_provider(count)
    total = 0
    count.times { |i| total += (@state + i * 17) % 997 }
    total
  end
end

puts FastProcessor.new.resolve_provider(17)
