require 'spec_helper'

describe SecuritiesController do

  let!(:security){ create(:security) }
  describe '#index' do
    before(:each){ get :index, format: :json }
    it 'is ok' do
      expect(response).to be_ok
    end
  end

end