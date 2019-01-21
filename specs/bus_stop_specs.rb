require("minitest/autorun")
require("minitest/rg")
require_relative("../BusStop")
require_relative("../Bus")
require_relative("../Person")

class TestBusStop < MiniTest::Test

  def setup
    @passenger = Person.new("Lily", 27)

    @bus = Bus.new(22, "Ocean Terminal", [])

    @busstop = BusStop.new("Rocky Mountains", [])
  end

  def test_add_person_to_queue
    @busstop.add_to_queue(@passenger)
    assert_equal([@passenger], @busstop.queue)
  end

  def test_passengers_board_bus
    @bus.pick_up_from_stop(@busstop)
    @busstop.passengers_board_bus()
    assert_equal([], @busstop.queue)
  end

end
