class ExercisesController < ApplicationController

  skip_forgery_protection
  #  protect_from_forgery with: :null_session

  def index
    @exercises = Exercise.all
    render(json: @exercises)
  end

  def create
    @exercise = Exercise.new(exercise_params)
    #authorize(@exercise)
    if @exercise.save
      render(json: @exercise)
    else
      render(json: @exercise.errors.details, status: :bad_request)
    end
  end

  def update
    if Exercise.update(params[:id])
      render(json: {"hello": "Yes"})
    else
      render(json: {"hello": "Yes"})
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])

    if @exercise.destroy
      render(json: {"res": "Item Deleted Successfully"})
    else
      render(json: {"res": "Item was not deleted"})
    end
    ##User.destroy_by(exercise_params)
  end

  private

  def exercise_params
    params.require(:exercise).permit(
      :name,
      :description,
      :id
    )
  end
end
