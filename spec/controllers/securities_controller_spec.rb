require 'spec_helper'

describe SecuritiesController do

  let!(:security){ create(:security) }
  describe '#index' do
    before(:each){ get :index, format: :json }
    it 'is ok' do
      expect(response).to be_ok
    end

    it 'returns the set of securities' do
      expect(response.body).to eq [security.attributes].to_json
    end
  end

end