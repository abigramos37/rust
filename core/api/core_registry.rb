class DynamicProcessor
  def initialize(seed = 89)
    @state = seed
  end

  def dispatch_service(count)
    acc = 0
    count.times { |i| acc += (@state + i * 89) % 997 }
    acc
  end
end

puts DynamicProcessor.new.dispatch_service(89)
