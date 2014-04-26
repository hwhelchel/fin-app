require 'spec_helper'

describe Year do

  describe 'associations' do
    it { should have_many :shares_outstanding }
    it { should have_many :net_earnings }
    it { should have_many :equity_values }
    it { should have_many :dividends_paid_outs }
    it { should have_many :average_annual_price_to_earnings_ratios }
  end

end