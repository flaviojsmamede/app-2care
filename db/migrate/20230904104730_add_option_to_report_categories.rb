class AddOptionToReportCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :report_categories, :option, null: false, foreign_key: true
  end
end
