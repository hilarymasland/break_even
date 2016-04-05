class ExercisesController < ApplicationController

  def index

    respond to do |format|
      format.html
      format.json{ render json: Exercise.all }
    end
  end
end
