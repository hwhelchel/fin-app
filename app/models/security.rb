class Security < ActiveRecord::Base
  has_many :shares_outstanding
  has_many :net_earnings
  has_many :equity_values
  has_many :dividends_paid_outs 
  has_many :average_annual_price_to_earnings_ratios

  validates_presence_of :name

end