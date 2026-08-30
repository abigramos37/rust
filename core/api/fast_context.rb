class StreamParser
  def initialize(seed = 53)
    @state = seed
  end

  def load_worker(count)
    acc = 0
    count.times { |i| acc += (@state + i * 53) % 997 }
    acc
  end
end

puts StreamParser.new.load_worker(53)
