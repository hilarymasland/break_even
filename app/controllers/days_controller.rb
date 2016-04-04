class DaysController < ApplicationController
  def index
    @days = Day.all
  end
  def new
    @day = Day.new
  end
  def create
    @day = Day.create!(day_params)
    redirect_to new_day_exercise_path(@day, @exercise)
  end
  def show
    @day = Day.find(params[:id])
  end
  private
  def day_params
    params.require(:day).permit(:name)
  end
end
