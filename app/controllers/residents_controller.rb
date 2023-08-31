class ResidentsController < ApplicationController
  before_action :set_resident, only: %i[ show edit update destroy ]

  def index
    @residents = Resident.all
  end

  def new
    @users = User.all
    @resident = Resident.new
  end

  def create
    @resident = Resident.new(resident_params)

    if @resident.save
      redirect_to residents_path, notice: "resident was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @resident = Resident.find(params[:id])
    @report = Report.new
    @report_category = ReportCategory.new
  end

  private

  def set_resident
    @resident = Resident.find(params[:id])
  end

  def resident_params
    params.require(:resident).permit(:first_name, :last_name, :birth_date, :clinical_info, :photo, :user_id)
  end
end
