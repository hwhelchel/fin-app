class SecuritiesController < ApplicationController

  def index
    @securities = Security.includes(
      average_annual_price_to_earnings_ratios: :year,
      equity_values: :year,
      dividends_paid_outs: :year,
      net_earnings: :year,
      shares_outstanding: :year).all
    respond_with(@securities)
  end

end