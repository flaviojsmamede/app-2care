class AddPhotographyToFamilyMembers < ActiveRecord::Migration[7.0]
  def change
    add_column :family_members, :photography, :string
  end
end
