# frozen_string_literal: true

module HotelManagement
  class StandardRoom < Room
    def initialize(name:, price:)
      super
      @ac = false
      @price = price.nil? ? 1000 : price
    end
  end
end
