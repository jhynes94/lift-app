class ProgressionController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :authenticate_user!

  # List out all Sessions that specific user has signed up in (Also Completed Ones)
  def index
    if params[:user_id]
      @progressions = Progression.where(user_id: params[:user_id])

      #If there are no progressions, log to the console "No Progressions Found"
      if @progressions.empty?
        puts "No Progressions Found"
      end

      #render out the progressions
      render(json: @progressions)
    else
      render(json: { error: 'No user_id provided.' }, status: :bad_request)
    end
  end

  # Show the details of a specific progression
  def show
    if params[:id]
      @progression = Progression.find(params[:id])
      render(json: @progression)
    else
      render(json: { error: 'No id provided.' }, status: :bad_request)
    end
  end

  # Creates a new progression for a program that a person is working on based on the program id
  def create
    @progression = Progression.new(progression_params)
    @progression.user_id = current_user.id
    @progression.save
    render(json: @progression)
  end

  # PATCH/PUT /entries/1 or /entries/1.json
  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to entry_url(@entry), notice: "Entry was successfully updated." }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def progression_params
    params.require(:progression).permit(:user_id, :program_id)
  end
end
