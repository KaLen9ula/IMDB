describe MovieController, type: :controller do
  let(:user) { create(:user) }
  let(:movie) { create(:movie) }
  let(:categories) { Category.all }

  before do
    create_list(:movie, 5)
    create_list(:category, 3)
  end

  describe 'GET show' do
    before do
      get :show, params: { id:movie.id }
    end

    it { expect(assigns[:movie]).to eq movie }

    it { is_expected.to respond_with(200) }
    it { expect(request.path).to eq movie_path(movie) }
    it { is_expected.to render_template 'show' }
  end
end
