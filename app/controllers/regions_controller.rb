class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def import
    begin
      Region.import(params[:file])
      redirect_to root_url, notice: "Ukraine Regions Table imported."
    rescue
       redirect_to root_url, notice: "Invalid CSV file format."
    end
  end
end
