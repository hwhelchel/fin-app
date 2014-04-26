class DividendsPaidOutsController < ApplicationController

  def index
    @dividends = DividendsPaidOut.all
    respond_with(@dividends)
  end

  def show
    @dividend = DividendsPaidOut.find(params[:id])
    respond_with(@dividend)
  end

end