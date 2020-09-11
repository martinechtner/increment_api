RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_one(:user_increment).dependent(:destroy) }
  end

  describe 'after_create' do
    it 'creates a user_increment on successful creation of a user' do
      user = create(:user)
      user_increment = user.user_increment
      expect(user_increment).to_not be_nil
      expect(user_increment.user).to eq user
      expect(user_increment.current).to eq 1
    end
  end
end
