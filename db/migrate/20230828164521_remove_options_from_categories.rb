class RemoveOptionsFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :options, :string
  end
end
