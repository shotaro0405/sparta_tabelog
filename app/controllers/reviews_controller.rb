class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
     @review = Review.new(
      restaurant_id: params[:restaurant_id],
      user_id: current_user.id,
      score: review_params["score"],
      title: review_params["title"],
      body: review_params["body"]
    )
    if @review.save
      redirect_to restaurant_url(@review.restaurant)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(
      :score,
      :title,
      :body
      )
  end
end
