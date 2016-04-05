class ExercisesController < ApplicationController

  def index

    respond_to do |format|
      format.html
      format.json{ render json: Exercise.all }
    end
  end
end
