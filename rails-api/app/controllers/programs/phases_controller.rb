class PhasesController < ApplicationController

  def index
    @phases = Program.find(params[:program_id]).phases
    if @phases
      render(json: @phases)
    else
      render(json: @phases.errors.details, status: :bad_request)
    end
  end

end
