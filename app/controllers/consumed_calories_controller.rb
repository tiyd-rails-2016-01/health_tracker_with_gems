class ConsumedCaloriesController < ApplicationController
  before_action :set_calorie, only: [:show, :edit, :update, :destroy]


  def index
    @calories = ConsumedCalory.all
  end


  def show
  end

  def new
    @calorie = ConsumedCalory.new
  end

  def edit
  end


  def create
    @calorie = ConsumedCalory.new(calorie_params)

    respond_to do |format|
      if @calorie.save
        format.html { redirect_to @calorie, notice: 'Calorie journal entry was successfully created.' }
        format.json { render :show, status: :created, location: @calorie }
      else
        format.html { render :new }
        format.json { render json: @calorie.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @calorie.update(calorie_params)
        format.html { redirect_to @calorie, notice: 'Calorie journal entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @calorie }
      else
        format.html { render :edit }
        format.json { render json: @calorie.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @calorie.destroy
    respond_to do |format|
      format.html { redirect_to consumed_calories_url, notice: 'Calorie journal entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calorie
      @calorie = ConsumedCalory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calorie_params
      params.require(:consumed_calory).permit(:total, :consumed_on)
    end
end
