require "csv"
require "apple_db/version"

module AppleDb
  class Identifier
    def find_by_serial_number(serial_number)
      last_4 = serial_number[serial_number.length - 4, serial_number.length]
      items.find { |item| last_4 == item["identifier"] }
    end

    private

    attr_reader :items

    def items
      @_items ||= CSV.read("lib/apple_db/apple_db.csv", headers: true, col_sep: "|")
    end
  end
end