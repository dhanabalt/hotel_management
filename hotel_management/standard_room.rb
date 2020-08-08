# frozen_string_literal: true

module HotelManagement
  class StandardRoom < Room
    def initialize(name:, price:, type:)
      super
      @ac = false
    end
  end
end
