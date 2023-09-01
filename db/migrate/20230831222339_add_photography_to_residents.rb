class AddPhotographyToResidents < ActiveRecord::Migration[7.0]
  def change
    add_column :residents, :photography, :string
  end
end
