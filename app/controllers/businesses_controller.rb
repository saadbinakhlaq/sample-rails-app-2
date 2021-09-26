class BusinessesController < ApplicationController
  def index
    @businesses = Business.includes(:reviews, :operating_hours, :address).all.page params[:page]
  end

  def show
    business = Business.find(params[:id])
    @business = BusinessPresenter.new(business)
  end
end