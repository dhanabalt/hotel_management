# frozen_string_literal: true

module HotelManagement
  class Room
    @@rooms = []
    attr_accessor :name, :price, :type, :checked_in, :customer, :ac

    def initialize(name:, price:, type:)
      @name = name
      @price = price
      @type = type
      @checked_in = false
    end

    def check_in(customer:)
      self.checked_in = true
      self.customer = customer

      self
    end

    def check_out
      self.checked_in = false
      self.customer = nil

      self
    end

    class << self
      def create(name:, price:, type:)
        room = new(name: name, price: price, type: type)
        @@rooms << room

        room
      end

      def available
        @@rooms.reject(&:checked_in)
      end

      def all
        @@rooms
      end
    end
  end
end
