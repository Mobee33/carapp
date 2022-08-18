class ReviewsController < ApplicationController
  before_action :set_car, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.car = @car
    if @review.save
      redirect_to car_path(@car)
    else
      render 'cars/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to car_path(@review.restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
