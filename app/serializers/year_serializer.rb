class YearSerializer < ActiveModel::Serializer
  attributes :id, :year
  has_many :performances
end
