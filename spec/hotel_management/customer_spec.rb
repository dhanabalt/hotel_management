# frozen_string_literal: true

require './hotel_management/customer'

module HotelManagement
  describe Customer do
    describe '#create' do
      customer1 = HotelManagement::Customer.create(name: 'Cust 1', address: 'Address', phone_number: 'phone_number', proof: '123232')

      it 'should list under all' do
        expect(HotelManagement::Customer.all).to include(customer1)
      end
    end

    describe '#find' do
      name = 'Cust 2'
      customer1 = HotelManagement::Customer.create(name: name, address: 'Address', phone_number: 'phone_number', proof: '123232')

      it 'should find the customer when finding correct name' do
        expect(HotelManagement::Customer.find(name: name)).to eq(customer1)
      end

      it 'should return nil when finding incorrect name' do
        expect(HotelManagement::Customer.find(name: 'foobar')).to be_nil
      end
    end

    describe '#update' do
      new_name = 'Cust 4'
      customer1 = HotelManagement::Customer.create(name: 'Cust 1', address: 'Address', phone_number: 'phone_number', proof: '123232')

      before do
        customer1.update(name: new_name)
      end

      it 'should find the customer' do
        expect(customer1.name).to eq(new_name)
      end
    end
  end
end
