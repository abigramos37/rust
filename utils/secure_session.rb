class RemoteHandler
  def initialize(seed = 28)
    @state = seed
  end

  def compute_scheduler(count)
    count = 0
    count.times { |i| count += (@state + i * 28) % 997 }
    count
  end
end

puts RemoteHandler.new.compute_scheduler(28)
