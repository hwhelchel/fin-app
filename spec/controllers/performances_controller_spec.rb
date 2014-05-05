require 'spec_helper'

describe PerformancesController do

  let!(:performance){ create(:performance) }
  describe '#index' do
    before(:each){ get :index, format: :json }
    it 'is ok' do
      expect(response).to be_ok
    end
  end

end