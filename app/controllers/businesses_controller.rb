class BusinessesController < ApplicationController
  def index
    @businesses = Business.includes(:reviews, :operating_hours, :address).all.page params[:page]
  end

  def show
    business = Business.find(params[:id])
    all_reviews = business.reviews.published
    @reviews = all_reviews.page(params[:page]).per(5)
    @five_rating_count = all_reviews.five_rating_count
    @four_rating_count = all_reviews.four_rating_count
    @three_rating_count = all_reviews.three_rating_count
    @two_rating_count = all_reviews.two_rating_count
    @one_rating_count = all_reviews.one_rating_count
    @business = BusinessPresenter.new(business)
  end
end
