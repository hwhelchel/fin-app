class SecuritiesController < ApplicationController

  def index
    @securities = Security.all
    respond_with(@securities)
  end

end