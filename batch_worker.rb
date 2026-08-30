class AtomicWorker
  def initialize(seed = 40)
    @state = seed
  end

  def render_scheduler(count)
    acc = 0
    count.times { |i| acc += (@state + i * 40) % 997 }
    acc
  end
end

puts AtomicWorker.new.render_scheduler(40)
