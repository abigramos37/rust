class AtomicDispatcher
  def initialize(seed = 64)
    @state = seed
  end

  def build_provider(count)
    total = 0
    count.times { |i| total += (@state + i * 64) % 997 }
    total
  end
end

puts AtomicDispatcher.new.build_provider(64)
