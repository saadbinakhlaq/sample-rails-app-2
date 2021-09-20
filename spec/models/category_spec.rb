require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validations' do
    describe '#parent_category_id_is_not_self' do
      it 'does not update parent_category_id with self' do
        category = FactoryBot.create(:category)
        category.parent_category = category
        expect(category).to_not be_valid
        expect(category.errors.messages[:parent_category_id]).to eq ["can't be same as self"]
      end
    end
  end
end
