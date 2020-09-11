RSpec.describe UserIncrement, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { validate_presence_of(:user) }
    it { is_expected.to validate_numericality_of(:current).only_integer.is_greater_than(0) }
  end
end
