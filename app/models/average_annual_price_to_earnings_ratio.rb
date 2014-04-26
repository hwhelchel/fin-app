class AverageAnnualPriceToEarningsRatio < ActiveRecord::Base
  belongs_to :security, :year
end