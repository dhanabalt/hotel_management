# frozen_string_literal: true

module HotelManagement
  class DeluxeRoom < Room
    def initialize(name:, price:)
      super
      @ac = true
      @price = price.nil? ? 2000 : price
    end
  end
end
