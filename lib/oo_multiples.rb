# Enter your object-oriented solution here!
class Multiples
  attr_accessor :limit
  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    [*1...limit].select{|i| i%15 == 0 || i%5 == 0 || i%3 == 0 }
  end

  def sum_multiples
    collect_multiples.inject(:+)
  end
end
