class SecuritiesController < ApplicationController

  def index
    @securities = Security.all
    respond_with(@securities)
  end

  def show
    @security = Security.find(params[:id])
    respond_with(@security)
  end

end