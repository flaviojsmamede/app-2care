class ReportsController < ApplicationController
  before_action :set_report, only: %i[show edit update destroy]

  def index
    @resident = Resident.find(params[:resident_id])
    @reports = @resident.reports
    @report = Report.new
  end

  def show
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
