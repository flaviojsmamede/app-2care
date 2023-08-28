class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.boolean :send_status, default: false
      t.references :resident, null: false, foreign_key: true

      t.timestamps
    end
  end
end
