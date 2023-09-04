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

  # send the email with the report
  # def send
  #   @resident = Resident.find(params[:resident_id])
  #   @family_member = Resident.find()....
  #   @report.resident = @resident
  #   ReportMailer.email_report(@family_member, @resident, @report).deliver_now
  # end

  private

  def set_report
    @report = Report.find(params[:id])
  end
end
