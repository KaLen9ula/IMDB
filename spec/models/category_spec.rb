RSpec.describe Category, type: :model do
  context 'with associations' do
    it { is_expected.to have_many(:movies) }
  end

  context 'with validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
