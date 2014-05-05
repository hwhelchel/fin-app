class SecuritySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :ticker, :price, :long_term_debt
  has_many :performances
end
