class Security < ActiveRecord::Base
  has_many :performances
  validates_presence_of :name
end