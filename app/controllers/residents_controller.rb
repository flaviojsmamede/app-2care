class ResidentsController < ApplicationController
  before_action :set_resident, only: %i[ show edit update destroy ]

  def index
    @residents = Resident.all
  end

  def new
    @resident = Resident.new
  end

  def create
    @resident = resident.new(resident_params)

    if @resident.save
      redirect_to @resident, notice: "resident was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @resident = Resident.find(params[:id])
  end

  private

  def set_resident
    @resident = Resident.find(params[:id])
  end

  def resident_params
    params.require(:resident).permit(:first_name, :last_name, photos: [])
  end
end
