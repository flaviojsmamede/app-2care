class ReportsController < ApplicationController
  before_action :set_report, only: %i[ show edit update destroy ]

  def index
    @reports = Report.all
    @report = Report.new
    @resident = Resident.find(params[:resident_id])
  end

  def show
    @report = Report.find(params[:id])
  end

  def create
    @resident = Resident.find(params[:resident_id])
    @report = Report.new
    @report.resident = @resident
    if @report.save
      redirect_to new_report_report_category_path(@report)
    else
      render "reports/index", status: :unprocessable_entity
    end
  end

  private

  def set_report
    @report = Report.find(params[:id])
  end
end
