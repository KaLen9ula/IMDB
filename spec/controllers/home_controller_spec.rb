describe HomeController, type: :controller do
  let(:movie) { create(:movie) }
  let(:categories) { Category.all }

  before do
    create_list(:movie, 2)
    create_list(:category, 1)
  end

  describe 'GET index' do
    let(:movies) { Movie.all }

    before do
      get :index
    end

    it { expect(assigns[:movies].to_a).to match_array movies.to_a }
    it { expect(assigns[:movies]).to be_kind_of ActiveRecord::Relation }

    it { expect(assigns[:current_category]).to eq nil }

    it { expect(assigns[:pagy]).to be_instance_of Pagy }
    it { expect(assigns[:categories]).to eq categories }

    it { is_expected.to respond_with(200) }
    it { expect(request.path).to eq root_path }
    it { is_expected.to render_template 'index' }
  end
end
