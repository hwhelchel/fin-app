class NetEarningsController < ApplicationController

  def index
    @earnings = NetEarnings.all
    respond_with(@earnings)
  end

  def show
    @earnings = NetEarnings.find(params[:id])
    respond_with(@earnings)
  end

end