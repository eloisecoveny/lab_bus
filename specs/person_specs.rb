require("minitest/autorun")
require("minitest/rg")
require_relative("../Person")

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("Andy", 35)
  end

  def test_get_name
    assert_equal("Andy", @person.name)
  end

  def test_get_age
    assert_equal(35, @person.age)
  end

end
