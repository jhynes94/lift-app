class ProgressionController < ApplicationController

  protect_from_forgery with: :null_session

  # This Endpoint should allow the User to Get their current workout
  def index
    @program = Progression.find()
    if @program
      render(json: @program)
    else
      render(json: @program.errors.details, status: :bad_request)
    end
  end

  private

  def progression_params
    params.require(:program).permit(
      :name,
      :description,
      :id
    )
  end
end
