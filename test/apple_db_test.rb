require "test_helper"

class AppleDbTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::AppleDb::VERSION
  end

  def test_that_it_finds_some_serial_numbers
    db = AppleDb::Identifier.new

    iphone_x = db.find_by_serial_number("G6TVKE4BJCL8")
    iphone_3gs = db.find_by_serial_number("W89281233NS")
    imac = db.find_by_serial_number("C02K3B15DNMP")
    macbook_pro = db.find_by_serial_number("C02SWFBWHF1R")
    power_mac = db.find_by_serial_number("12345678N1S")
    nothing = db.find_by_serial_number("ABC")

    assert iphone_x["name"] == "iPhone X"
    assert iphone_3gs["name"] == "iPhone 3GS"
    assert imac["name"] == "iMac (27-inch, Late 2012)"
    assert macbook_pro["name"] == "MacBook Pro (13-inch, Late 2016, Four Thunderbolt 3 Ports)"
    assert power_mac["name"] == "Power Mac G4 (FW 800)"

    assert iphone_x["category"] == "Phone"
    assert iphone_3gs["category"] == "Phone"
    assert imac["category"] == "Stationary"
    assert macbook_pro["category"] == "Laptop"
    assert power_mac["category"] == "Stationary"
    assert nothing.nil?
  end
end
