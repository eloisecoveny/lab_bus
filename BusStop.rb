class BusStop

  attr_reader :name
  attr_accessor :queue

  def initialize(name, queue)
    @name = name
    @queue = []
  end

  def add_to_queue(passenger)
    @queue << passenger
  end

end
