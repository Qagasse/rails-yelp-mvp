class ReviewsController < ApplicationController

  before_action :set_restaurant, only: [:new, :create, :show]

  def new
    @review = Review.new
  end

  def show

  end

  def create
    @review = Review.new(params_review)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private

  def set_review
    @reviews = Review.find(params[:restaurant_id])
  end

  def params_review
    params.require(:review).permit(:content, :rating)
  end
end
