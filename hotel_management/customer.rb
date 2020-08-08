# frozen_string_literal: true

module HotelManagement
  class Customer
    attr_accessor :name, :address, :phone_number, :proof, :room
    @@customers = []

    def initialize(name:, address:, phone_number:, proof:)
      @name = name
      @address = address
      @phone_number = phone_number
      @proof = proof
    end

    def update(*args)
      args.each do |hsh|
        hsh.each do |key, val|
          public_send("#{key}=", val) if respond_to?("#{key}=")
        end
      end

      self
    end

    class << self
      def create(name:, address:, phone_number: nil, proof: nil)
        customer = Customer.new(name: name,
                                address: address,
                                phone_number: phone_number,
                                proof: proof)

        @@customers << customer

        customer
      end

      def find(name:)
        @@customers.detect { |customer| customer.name.downcase == name&.downcase }
      end

      def all
        @@customers
      end
    end
  end
end
