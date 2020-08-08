# frozen_string_literal: true

require './hotel_management/standard_room'

module HotelManagement
  describe StandardRoom do
    describe '#create' do
      room1 = HotelManagement::StandardRoom.create(name: 'room1', price: '2000', type: 'Comfortable')

      it 'should list under all' do
        expect(HotelManagement::Room.all).to include(room1)
      end

      it 'should list under available' do
        expect(HotelManagement::Room.available).to include(room1)
      end

      it 'ac should be false' do
        expect(room1.ac).to be_falsey
      end
    end
  end
end
