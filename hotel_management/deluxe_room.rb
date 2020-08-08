# frozen_string_literal: true

module HotelManagement
  class DeluxeRoom < Room
    def initialize(name:, price:, type:)
      super
      @ac = true
    end
  end
end
