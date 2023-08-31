class CategoryController < ApplicationController
  def update
    @report = Report.find(params[:report_id])
    @category = ReportCategory.find(params[:id]).category
    if @category.update(categories_params)
      redirect_to report_path(@report)
    else
      render "report_categories/show"
    end
  end

  def categories_params
    params.require(:category).permit(:option_id)
  end
end
