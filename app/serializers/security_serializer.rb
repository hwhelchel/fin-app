class SecuritySerializer < ActiveModel::Serializer
  attributes :id, :name, :ticker, :price, :long_term_debt
  has_many :performances
  embed :objects, include: true
end
