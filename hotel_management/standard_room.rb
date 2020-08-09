# frozen_string_literal: true

module HotelManagement
  class StandardRoom < Room
    def initialize(name:)
      super
      @ac = false
      @price = 1000
    end
  end
end
