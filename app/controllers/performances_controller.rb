class PerformancesController < ApplicationController

  def index
    @performances = Performance.all
    respond_with(@performances)
  end

end