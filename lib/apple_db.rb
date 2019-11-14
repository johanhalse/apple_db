require "csv"
require "apple_db/version"

module AppleDb
  class Identifier
    def find_by_serial_number(serial_number)
      identifier = serial_number[serial_number.length - 4, serial_number.length]
      identifier[0] = "" if serial_number.length == 11
      items.find { |item| identifier == item["identifier"] }
    end

    private

    attr_reader :items, :extra_items

    def items
      @_items ||= CSV.read("lib/apple_db/apple_db.csv", headers: true, col_sep: "|")
    end
  end
end