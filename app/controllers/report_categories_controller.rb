class ReportCategoriesController < ApplicationController
  def index
    @report_categories = ReportCategory.all
  end

  def new
    @report = Report.find(params[:report_id])
    @report_category = ReportCategory.new
  end

  def create
    @report = Report.find(params[:report_id])
    @report_category = ReportCategory.new(report_categories_params)
    @options = Option.where(category_id: params[:report_category][:category_id])
    raise
    @report_category.report = @report
    if @report_category.save
      redirect_to report_path(@report), notice: "Report Category was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def report_categories_params
    params.require(:report_category).permit(:category_id)
  end
end
