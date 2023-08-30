class ReportsController < ApplicationController
  before_action :set_report, only: %i[ show edit update destroy ]

  def index
    @reports = Report.all
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(set_report)

    if @report.save
      redirect_to residents_path, notice: "report was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:send_status, :resident_id)
  end

end
