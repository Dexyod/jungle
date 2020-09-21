require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    #create initial example
    let(:category) {Category.new(name: 'tools')}
    let(:product) {Product.new(name: 'spanner', description: "it's a spanner", price_cents: 2500, quantity: 3, category: category)}

    context 'when all the proper attributes are provided' do
      it 'should be valid' do
        product.valid?
        expect(product).to be_valid
    # validation tests/examples here
      end
    end

    context 'when product name is not present' do

      it 'should not be valid' do
        product.name = nil
        expect(product).to_not be_valid
      end

      it 'reports a validation error on a blank name' do
        product.name = nil
        product.valid?
        expect(product.errors.full_messages).to include("Name can't be blank")
      end

    end

    context 'when product price is not present' do

      it 'should not be valid' do
        product.price_cents = nil
        expect(product).to_not be_valid
      end

      it 'reports a validation error on blank price' do
        product.price_cents = nil
        product.valid?
        expect(product.errors.full_messages).to include("Price can't be blank")
      end

    end


    context 'when product quantity is not present' do

      it 'should not be valid' do
        product.quantity = nil
        expect(product).to_not be_valid
      end

      it 'reports a validation error on blank quantity' do
        product.quantity = nil
        product.valid?
        expect(product.errors.full_messages).to include("Quantity can't be blank")
      end

    end

    context 'when product category is not present' do

      it 'should not be valid' do
        product.category = nil
        expect(product).to_not be_valid
      end

      it 'reports a validation error on blank category' do
        product.category = nil
        product.valid?
        expect(product.errors.full_messages).to include("Category can't be blank")
      end

    end
  end
end