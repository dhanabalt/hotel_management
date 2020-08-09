# frozen_string_literal: true

require './hotel_management/room'
require './hotel_management/deluxe_room'

module HotelManagement
  describe DeluxeRoom do
    describe '#create' do
      room1 = HotelManagement::DeluxeRoom.create(name: 'room1')

      it 'should list under all' do
        expect(HotelManagement::Room.all).to include(room1)
      end

      it 'should list under available' do
        expect(HotelManagement::Room.available).to include(room1)
      end

      it 'ac should be true' do
        expect(room1.ac).to be_truthy
      end

      it 'price should be 2000' do
        expect(room1.price).to eq(2000)
      end
    end
  end
end
