class CreateFamilyMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :family_members do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :relationship
      t.references :resident, null: false, foreign_key: true

      t.timestamps
    end
  end
end
