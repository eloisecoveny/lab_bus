require("minitest/autorun")
require("minitest/rg")
require_relative("../BusStop")
require_relative("../Bus")
require_relative("../Person")

class TestBusStop < MiniTest::Test

  def setup
    @passenger = Person.new("Lily", 27)

    @busstop = BusStop.new("Rocky Mountains", [])
  end

  def test_add_person_to_queue
    @busstop.add_to_queue(@passenger)
    assert_equal([@passenger], @busstop.queue)
  end

end
