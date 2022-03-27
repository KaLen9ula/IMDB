RSpec.describe Grade, type: :model do
  context 'with associations' do
    it { is_expected.to belong_to(:movie) }
    it { is_expected.to belong_to(:user) }
    end
  context 'with validations' do
    it { is_expected.to validate_numericality_of(:user_id) }
    it { is_expected.to validate_numericality_of(:movie_id) }
    it { is_expected.to validate_numericality_of(:rating) }

    it { is_expected.to validate_length_of(:user_id).is_at_least(0) }
    it { is_expected.to validate_length_of(:movie_id).is_at_least(0) }
    it { is_expected.to validate_length_of(:rating).is_at_least(0) }
  end
end
