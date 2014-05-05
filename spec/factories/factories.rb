FactoryGirl.define do
  factory :security do
    name "Big Co"
    ticker "BC"
    long_term_debt 1
  end

  factory :year do
    year 2008
  end

  factory :performance do
    shares_outstanding 1.0
    net_earnings 1.0
    dividends_paid_out 1.0
    equity_value 1.0
    pe 1.0
    security
    year
  end
end
