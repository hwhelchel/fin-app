class PerformanceSerializer < ActiveModel::Serializer
  attributes :id, :shares_outstanding, :net_earnings, :dividends_paid_out, :equity_value,:pe, :year_id, :security_id
end
