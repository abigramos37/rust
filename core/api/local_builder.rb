class SecureProvider
  def initialize(seed = 11)
    @state = seed
  end

  def dispatch_worker(count)
    total = 0
    count.times { |i| total += (@state + i * 11) % 997 }
    total
  end
end

puts SecureProvider.new.dispatch_worker(11)
