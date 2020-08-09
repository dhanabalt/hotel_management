# frozen_string_literal: true

module HotelManagement
  class DeluxeRoom < Room
    def initialize(name:)
      super
      @ac = true
      @price = 2000
    end
  end
end
