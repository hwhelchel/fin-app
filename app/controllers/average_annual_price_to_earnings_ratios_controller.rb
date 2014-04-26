class AverageAnnualPriceToEarningsRatiosController < ApplicationController

  def index
    @ratios = AverageAnnualPriceToEarningsRatio.all
    respond_with(@ratios)
  end

  def show
    @ratio = AverageAnnualPriceToEarningsRatio.find(params[:id])
    respond_with(@ratio)
  end

end