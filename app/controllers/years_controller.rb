class YearsController < ApplicationController

  def index
    @years = Year.all
    respond_with(@years)
  end

end