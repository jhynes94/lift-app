class ProgramsController < ApplicationController

  protect_from_forgery with: :null_session

  def index
    @programs = Program.all
    render(json: @programs)
  end

  def show
    @program = Program.find(params[:id])
    if @program
      render(json: @program)
    else
      render(json: @program.errors.details, status: :bad_request)
    end
  end

  def create
    @program = Program.new(program_params)
    #authorize(@program)
    if @program.save
      render(json: @program)
    else
      render(json: @program.errors.details, status: :bad_request)
    end
  end

  def update
    if Program.update(params[:id])
      binding.pry
      render(json: {"hello": "Yes"})
    else
      render(json: {"hello": "Yes"})
    end
  end

  def destroy
    @program = Program.find(params[:id])

    if @program.destroy
      render(json: {"res": "Item Deleted Successfully"})
    else
      render(json: {"res": "Item was not deleted"})
    end
  end

  private

  def program_params
    params.require(:program).permit(
      :name,
      :description,
      :id
    )
  end
end
