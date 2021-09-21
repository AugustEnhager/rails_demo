RSpec.describe 'GET /api/articles', type: :request do
subject { response }

  before do
    get '/api/articles'
  end

  xdescribe 'when there are some articles in the database' do
  end

  describe 'when there are NO articles in the database' do
    it { is_expected.to have_http_status 200 }

    it 'is expected to respond with a message' do
      expect(response_json['message']).to eq 'There are no articles'
    end
  end
end
