RSpec.describe 'GET /api/articles', type: :request do
  
  subject { response }
  
  describe 'when there are some articles in the database' do
    let!(:articles) do
      create_list(:article, 2)
      create(:article, title: 'My amazing news article')
    end
    before do      
      get '/api/articles'
    end

    it 'is expected to return a collection of articles' do
      expect(response_json['articles'].count).to eq 3
    end
  end

  describe 'when there are NO articles in the database' do
    before do
      get '/api/articles'
    end

    it { is_expected.to have_http_status 200 }

    it 'is expected to respond with a message' do
      expect(response_json['message']).to eq 'There are no articles'
    end
  end
end
