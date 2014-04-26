class YearsController < ApplicationController
  
  def index
    @years = Year.all
    respond_with(@years)
  end

  def show
    @year = Year.find(params[:id])
    respond_with(@year)
  end

end