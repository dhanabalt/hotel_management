# frozen_string_literal: true

require './hotel_management/room'
require './hotel_management/customer'

module HotelManagement
  describe Room do
    describe '#create' do
      room1 = HotelManagement::Room.create(name: 'room1')

      it 'should list under all' do
        expect(HotelManagement::Room.all).to include(room1)
      end

      it 'should list under available' do
        expect(HotelManagement::Room.available).to include(room1)
      end

      it 'price should be 500' do
        expect(room1.price).to eq(500)
      end
    end

    describe 'check_in' do
      room1 = HotelManagement::Room.create(name: 'room1')
      customer1 = HotelManagement::Customer.create(name: 'st 1', address: 'Address', phone_number: 'phone_number', proof: '123232')

      before do
        room1.check_in(customer: customer1)
      end

      it 'should update the checked_in as true' do
        expect(room1.checked_in).to be_truthy
      end

      it 'should assign the customer to room' do
        expect(room1.customer).to eq(customer1)
      end

      it 'should not list under available list' do
        expect(HotelManagement::Room.available).not_to include(room1)
      end
    end

    describe 'check_out' do
      room1 = HotelManagement::Room.create(name: 'room1')
      customer1 = HotelManagement::Customer.create(name: 'Cust 1', address: 'Address', phone_number: 'phone_number', proof: '123232')

      before do
        room1.check_in(customer: customer1)
        room1.check_out
      end

      it 'should update the checked_in as false' do
        expect(room1.checked_in).to be_falsey
      end

      it 'should remove the customer from room' do
        expect(room1.customer).to be_nil
      end

      it 'should list under available list' do
        expect(HotelManagement::Room.available).to include(room1)
      end
    end
  end
end
