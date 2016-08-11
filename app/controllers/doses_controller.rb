class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def show
    @dose = Dose.find(params[:id])
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to dose_path(@cocktail)
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)
    redirect_to dose_path(@dose)
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to doses_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
