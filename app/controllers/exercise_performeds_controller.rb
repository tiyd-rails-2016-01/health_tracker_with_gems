class ExercisePerformedsController < ApplicationController
  before_action :set_exercise_performed, only: [:show, :edit, :update, :destroy]

  # GET /exercise_performeds
  # GET /exercise_performeds.json
  def index
    @exercise_performeds = ExercisePerformed.all
  end

  # GET /exercise_performeds/1
  # GET /exercise_performeds/1.json
  def show
  end

  # GET /exercise_performeds/new
  def new
    @exercise_performed = ExercisePerformed.new
  end

  # GET /exercise_performeds/1/edit
  def edit
  end

  # POST /exercise_performeds
  # POST /exercise_performeds.json
  def create
    @exercise_performed = ExercisePerformed.new(exercise_performed_params)

    respond_to do |format|
      if @exercise_performed.save
        format.html { redirect_to @exercise_performed, notice: 'Exercise performed was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_performed }
      else
        format.html { render :new }
        format.json { render json: @exercise_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_performeds/1
  # PATCH/PUT /exercise_performeds/1.json
  def update
    respond_to do |format|
      if @exercise_performed.update(exercise_performed_params)
        format.html { redirect_to @exercise_performed, notice: 'Exercise performed was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_performed }
      else
        format.html { render :edit }
        format.json { render json: @exercise_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_performeds/1
  # DELETE /exercise_performeds/1.json
  def destroy
    @exercise_performed.destroy
    respond_to do |format|
      format.html { redirect_to exercise_performeds_url, notice: 'Exercise performed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_performed
      @exercise_performed = ExercisePerformed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_performed_params
      params.require(:exercise_performed).permit(:exercise, :duration)
    end
end
