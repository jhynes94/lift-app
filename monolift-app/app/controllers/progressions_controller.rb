class ProgressionsController < ApplicationController
  before_action :set_progression, only: %i[show edit update destroy]

  before_action :authenticate_user!

  # GET /progressions or /progressions.json
  def index
    # Show Progressions specific to the user
    @progressions = Progression.where(user_id: current_user.id)
  end

  # GET /progressions/1 or /progressions/1.json
  def show; end

  # GET /progressions/new
  def new
    @programs = Program.all
    @progression = Progression.new
  end

  # GET /progressions/1/edit
  def edit
    # Displays the form for updating. Not used for this
  end

  # POST /progressions or /progressions.json
  def create
    @progression = Progression.new(progression_params)
    @progression.phase = 0
    @progression.workout = 0
    @progression.exercise = 0
    @progression.set = 0
    @progression.user_id = current_user.id

    respond_to do |format|
      if @progression.save
        format.html do
          redirect_to progression_workout_path(id: @progression.id), notice: 'Progression was successfully created.'
        end
        format.json { render :show, status: :created, location: @progression }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /progressions/1 or /progressions/1.json
  def update
    respond_to do |format|
      @progression = Progression.find(params[:id])
      @program = @progression.program
      @phase = Phase.where(program_id: @program.id, order: @progression.phase)
      @workout = Workout.where(phase_id: @phase[0].id, order: @progression.workout)

      # TODO: Items
      # * Iterate the Set number during the Workout
      # * Iterate the Loop Back over the Phase the number of times required. Requies an update to the model to include
      # * Add implementation to create a new workout log whenever this update method is called

      # Increment the current set, if it's the last one, current Exercise, if it's the last one,
      # increment the Workout, if it's the last one, increment the Phase
      @exercises = Exercise.where(workout_id: @workout[0].id)

      if @progression.set + 1 < @exercises[@progression.exercise].sets
        @progression.set = @progression.set + 1
      else
        @progression.set = 0
        if @progression.exercise + 1 < @exercises.count
          @progression.exercise = @progression.exercise + 1
        else
          @progression.exercise = 0
          @workouts = Workout.where(phase_id: @phase[0].id)
          if @progression.workout + 1 < @workouts.count
            @progression.workout = @progression.workout + 1
          else
            @phases = Phase.where(program_id: @program.id)
            @progression.workout = 0
            if @progression.phase + 1 < @phases.count
              @progression.phase = @progression.phase + 1
            else
              # Progression is complete, Redirect back to index page and mark as complete
              puts 'Progression is complete!'
              binding.pry
              format.html do
                redirect_to progressions_path(id: @progression.id), notice: 'You completed your First Program! Congrats'
              end
            end
          end
        end
      end

      if @progression.update(
        phase: @progression.phase,
        workout: @progression.workout,
        exercise: @progression.exercise,
        set: @progression.set
      )
        format.html { redirect_to progression_workout_path(id: @progression.id), notice: 'Nice job!' }
        format.json { render :show, status: :ok, location: @progression }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @progression.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /progressions/1 or /progressions/1.json
  def destroy
    @progression.destroy

    respond_to do |format|
      format.html { redirect_to progressions_url, notice: 'Progression was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # GET '/progressions/:id/progression_workout'
  def workout
    @progression = Progression.find(params[:id])
    @program = @progression.program
    # Probably shoudld replace where with find_by, because I'm only looking for the first one
    @phase = Phase.where(program_id: @program.id, order: @progression.phase).first
    @workout = Workout.where(phase_id: @phase.id, order: @progression.workout).first
    @exercise = Exercise.where(workout_id: @workout.id, order: @progression.exercise).first
    # binding.pry
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_progression
    @progression = Progression.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def progression_params
    params.permit(:phase, :workout, :exercise, :set, :program_id, :user_id)
  end
end
