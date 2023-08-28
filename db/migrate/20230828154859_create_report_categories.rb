class CreateReportCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :report_categories do |t|
      t.string :result
      t.text :additional_informations
      t.references :category, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
