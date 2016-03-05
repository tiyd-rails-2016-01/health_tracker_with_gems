class TakenStepsController < ApplicationController
  before_action :set_taken_step, only: [:show, :edit, :update, :destroy]

  # GET /weights
  # GET /weights.json
  def index
    @taken_steps = TakenStep.all
  end

  # GET /weights/1
  # GET /weights/1.json
  def show
  end

  # GET /weights/new
  def new
    @taken_step = TakenStep.new
  end

  # GET /weights/1/edit
  def edit
  end

  # POST /weights
  # POST /weights.json
  def create
    @taken_step = TakenStep.new(taken_step_params)

    respond_to do |format|
      if @taken_step.save
        format.html { redirect_to @taken_step, notice: 'Steps Taken was successfully created.' }
        format.json { render :show, status: :created, location: @taken_step }
      else
        format.html { render :new }
        format.json { render json: @taken_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weights/1
  # PATCH/PUT /weights/1.json
  def update
    respond_to do |format|
      if @taken_step.update(taken_step_params)
        format.html { redirect_to @taken_step, notice: 'Steps taken was successfully updated.' }
        format.json { render :show, status: :ok, location: @taken_step }
      else
        format.html { render :edit }
        format.json { render json: @taken_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @taken_step.destroy
    respond_to do |format|
      format.html { redirect_to weights_url, notice: 'steps taken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taken_step
      @taken_step = TakenStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taken_step_params
      params.require(:taken_step).permit(:count, :done_on)
    end
end
