class AddTitleToKitchens < ActiveRecord::Migration[5.2]
  def change
    add_column :kitchens, :title, :string
  end
end
