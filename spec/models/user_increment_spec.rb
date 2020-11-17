RSpec.describe UserIncrement, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    it { validate_presence_of(:user) }
    it { is_expected.to validate_numericality_of(:current).only_integer.is_greater_than(0).is_less_than(2147483648) }
  end

  describe 'increment' do
    let(:user_increment) { create(:user_increment, current: 1) }
    let!(:current_increment) { user_increment.current }

    it 'adds one to the current value' do
      user_increment.increment

      expect(user_increment.current).to_not eq current_increment
      expect(user_increment.current).to eq 2
    end
  end
end
