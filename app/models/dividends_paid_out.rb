class DividendsPaidOut < ActiveRecord::Base
  belongs_to :security, :year
end