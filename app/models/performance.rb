class Performance < ActiveRecord::Base
  belongs_to :security
  belongs_to :year
end