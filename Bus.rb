class Bus

  attr_reader :route, :destination
  attr_accessor :passengers

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drives()
    return "Brum Brum"
  end

  def number_of_passengers_on_bus
    return @passengers.length()
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def remove_all_passengers()
    @passengers.each { |passenger| @passengers.delete() }
  end

  def pick_up_from_stop(bus_stop)
    for passenger in bus_stop.queue
      @passengers << passenger
    end
    bus_stop.passengers_board_bus()
  end

end
