class BusStop

  attr_reader :name
  attr_accessor :queue

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def add_to_queue(passenger)
    @queue << passenger
  end

  def passengers_board_bus()
    @queue.clear()
  end

end
