class ReportCategoriesController < ApplicationController
  def index
    @report_categories = ReportCategory.all
  end

  def show
    @report_category = ReportCategory.find(params[:id])
    @report = @report_category.report_id
    @category = @report_category.category
  end

  def new
    @categories = Category.all
    @report = Report.find(params[:report_id])
    @report_category = ReportCategory.new
  end

  def create
    @report = Report.find(params[:report_id])
    @report_category = ReportCategory.new(report_categories_params)
    @report_category.report = @report
    @report_category.save

    if Category.last == @report_category.category
      redirect_to report_path(@report)
    end
  end

  def update
    @report_category = ReportCategory.find(params[:id])
    if @report_category.update(report_categories_params)
      redirect_to new_report_report_category_path(@report_category.report)
    else
      render "report_categories/show"
    end
  end

  private

  def report_categories_params
    params.require(:report_category).permit(:category_id, :additional_informations, :option_id)
  end
end
