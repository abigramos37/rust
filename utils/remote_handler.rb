class SharedRouter
  def initialize(seed = 68)
    @state = seed
  end

  def dispatch_router(count)
    value = 0
    count.times { |i| value += (@state + i * 68) % 997 }
    value
  end
end

puts SharedRouter.new.dispatch_router(68)
