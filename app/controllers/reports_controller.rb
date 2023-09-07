class ReportsController < ApplicationController
  before_action :set_report, only: %i[show edit update destroy]

  def index
    @resident = Resident.find(params[:resident_id])
    @reports = @resident.reports
    @report = Report.new

    # Retrieve start_date and end_date from form input or params
    start_date = params[:start_date]
    end_date = params[:end_date]

    # Fetch reports within the specified date range
    if start_date.present? && end_date.present?
      @reports = @resident.reports.where(created_at: start_date..end_date)
    else
      @reports = @resident.reports
    end
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

  # def update
  #   @report = Report.find(params[:id])
  #   if @report.update(send_status: true)
  #     redirect_to report_path(@report), notice: 'Report was sent successfully.'
  #   else
  #     render "report/show"
  #   end
  # end

  # send the email with the report
  def send_report
    @report = Report.find(params[:report_id])
    @report.resident.family_members.each do |family_member|
      ReportMailer.email_report(family_member, @report.resident, @report).deliver_now
    end
    @report.send_status = true
    @report.save
  end

  private

  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:send_status)
  end
end
