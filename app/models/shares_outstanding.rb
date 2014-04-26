class SharesOutstanding < ActiveRecord::Base
  belongs_to :security, :year
end