require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus")
require_relative("../Person")
require_relative("../BusStop")

class TestBus < MiniTest::Test

  def setup
    @passenger1 = Person.new("Lily", 27)
    @passenger2 = Person.new("Andy", 35)
    @passenger3 = Person.new("Mandy", 17)

    @bus = Bus.new(22, "Ocean Terminal", [])

    @busstop = BusStop.new("Himalayas", [@passenger2, @passenger3])
  end

  def test_bus_drives_returns_string
    assert_equal("Brum Brum", @bus.drives())
  end

  def test_number_of_passengers_on_bus
    assert_equal(0, (@bus.passengers).length())
  end

  def test_bus_pick_up
    @bus.pick_up(@passenger1)
    assert_equal([@passenger1], @bus.passengers)
  end

  def test_bus_drop_off
    @bus.drop_off(@passenger1)
    assert_equal([], @bus.passengers)
  end

  def test_remove_all_passengers
    @bus.remove_all_passengers()
    assert_equal([], @bus.passengers)
  end

  def test_pick_up_from_stop
    @bus.pick_up_from_stop(@busstop)
    assert_equal([], @busstop.queue)
    assert_equal([@passenger2, @passenger3], @bus.passengers)
  end

end
