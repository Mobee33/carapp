class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  def index
    @cars = Car.all
  end

  def show
    @review = Review.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :price, :is_available, :image_url)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end
