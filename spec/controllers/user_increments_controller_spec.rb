RSpec.describe UserIncrementsController, type: :controller do
  let!(:user) { create(:user) }

  before { sign_in user }

  describe 'increment' do
    subject { get :increment,
                  params: {},
                  format: :json }

    it 'increments the current value by 1' do
      expect(user.user_increment.current).to eq 1
      subject
      expect(JSON.parse(response.body)['current']).to eq 2
      expect(user.reload.user_increment.current).to eq 2
    end
  end
end
