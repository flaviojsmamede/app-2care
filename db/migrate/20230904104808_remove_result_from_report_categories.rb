class RemoveResultFromReportCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :report_categories, :result
  end
end
