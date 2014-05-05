require 'spec_helper'

describe YearsController do

  let!(:year){ create(:year) }
  describe '#index' do
    before(:each){ get :index, format: :json }
    it 'is ok' do
      expect(response).to be_ok
    end
  end

end