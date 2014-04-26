class SharesOutstandingController < ApplicationController

  def index
    @shares = SharesOutstanding.all
    respond_with(@shares)
  end

  def show
    @shares = SharesOutstanding.find(params[:id])
    respond_with(@shares)
  end

end