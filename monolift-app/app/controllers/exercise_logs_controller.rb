class ExerciseLogsController < ApplicationController
  before_action :set_exercise_log, only: %i[ show edit update destroy ]

  # GET /exercise_logs or /exercise_logs.json
  def index
    @exercise_logs = ExerciseLog.all
  end

  # GET /exercise_logs/1 or /exercise_logs/1.json
  def show
  end

  # GET /exercise_logs/new
  def new
    @exercise_log = ExerciseLog.new
  end

  # GET /exercise_logs/1/edit
  def edit
  end

  # POST /exercise_logs or /exercise_logs.json
  def create
    @exercise_log = ExerciseLog.new(exercise_log_params)

    respond_to do |format|
      if @exercise_log.save
        format.html { redirect_to exercise_log_url(@exercise_log), notice: "Exercise log was successfully created." }
        format.json { render :show, status: :created, location: @exercise_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exercise_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_logs/1 or /exercise_logs/1.json
  def update
    respond_to do |format|
      if @exercise_log.update(exercise_log_params)
        format.html { redirect_to exercise_log_url(@exercise_log), notice: "Exercise log was successfully updated." }
        format.json { render :show, status: :ok, location: @exercise_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exercise_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_logs/1 or /exercise_logs/1.json
  def destroy
    @exercise_log.destroy

    respond_to do |format|
      format.html { redirect_to exercise_logs_url, notice: "Exercise log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_log
      @exercise_log = ExerciseLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def exercise_log_params
      params.require(:exercise_log).permit(:reps, :weight, :failure, :user_id)
    end
end
