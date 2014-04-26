class EquityValuesController < ApplicationController

  def index
    @values = EquityValue.all
    respond_with(@values)
  end

  def show
    @value = EquityValue.find(params[:id])
    respond_with(@value)
  end

end