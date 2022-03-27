RSpec.describe MovieQuery do
  describe '#call' do
    let(:result) { query.call }
    let(:query) { described_class.new(movies, category) }
    let(:category) { nil }
    let(:movies) { Movie.all }

    context 'without category' do
      before do
        create_list(:movie, 2)
      end

      it { expect(result).to eq movies }
    end

    context 'with category' do
      let(:category) { create(:category) }

      before do
        create(:movie)
        create(:movie, category: category)
      end

      it { expect(result).to eq category.movies }
    end
  end
end
