require "test_helper"

class AppleDbTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AppleDb::VERSION
  end

  def test_that_it_finds_some_serial_numbers
    db = AppleDb::Identifier.new

    iphone_x = db.find_by_serial_number("G6TVKE4BJCL8")
    imac = db.find_by_serial_number("C02K3B15DNMP")
    macbook_pro = db.find_by_serial_number("C02SWFBWHF1R")
    nothing = db.find_by_serial_number("ABC")

    assert iphone_x["name"] == "iPhone X"
    assert imac["name"] == "iMac (27-inch, Late 2012)"
    assert macbook_pro["name"] == "MacBook Pro (13-inch, Late 2016, Four Thunderbolt 3 Ports)"

    assert iphone_x["category"] == "Phone"
    assert imac["category"] == "Stationary"
    assert macbook_pro["category"] == "Laptop"
    assert nothing.nil?
  end
end
