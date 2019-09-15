class ReviewsController < ApplicationController
  before_action :set_rateing, only: [ :show, :edit, :update, :destroy]

  def index
    @rateings = rateing.all
  end

  def new
    @rateing = rateing.new
  end

  def create
    @rateing = rateing.new(rateing_params)
    @rateing.save
  end

  def show
  end

  def edit
  end

  def update
    @rateing.update(rateing_params)
  end

  def destroy
    @rateing.destroy
  end

  private

  def set_rateing
    @rateing = rateing.find(params[:id])
  end

  def rateing_params
    params.require(:rateing).permit(:name, :genre)
  end
end
