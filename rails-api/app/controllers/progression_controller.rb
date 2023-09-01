class ProgressionController < ApplicationController

  protect_from_forgery with: :null_session

  before_action :authenticate_user!


  # List out all Sessions that specific user has signed up in (Also Completed Ones)
  def index
    @progression = Progression.find()
    if @progression
      render(json: @progression)
    else
      render(json: @proprogressiongram.errors.details, status: :bad_request)
    end
  end

  # Show the details of a specific progression
  def show
    @progression = Progression.find(params[:id])
    if @progression
      render(json: @progression)
    else
      render(json: @progression.errors.details, status: :bad_request)
    end
  end

  # POST /progression
  # Creates a new progression for a program that a person is working on
  # Params: User ID, Program ID
  def create
    @progression = Progression.new(progression_params)

    # Link Progression chosen to Program chosen and current User

    respond_to do |format|
      if @progression.save
        format.json { render :show, status: :created, location: @progression }
      else
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
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
    params.require(:program).permit(
      :name,
      :description,
      :id
    )
  end
end
