class DosesController < ApplicationController
  before_action :set_cocktail, only: [:edit, :update, :destroy]

  def index
    @doses = Dose.all
  end

  # def show
  #   @cocktail = Cocktail.find(params[:id])
  #   @dose =
  # end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
