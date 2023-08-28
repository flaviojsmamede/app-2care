class CreateResidents < ActiveRecord::Migration[7.0]
  def change
    create_table :residents do |t|
      t.string :first_name
      t.string :second_name
      t.date :birth_date
      t.text :clinical_info
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
