RSpec.describe Movie, type: :model do
  context 'with validation' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:description) }
  end

  context 'with associations' do
    it { is_expected.to have_many(:grades).dependent(:destroy) }
    it { is_expected.to belong_to(:category) }
  end
end
