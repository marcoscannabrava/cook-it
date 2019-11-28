class AddNeighbourhoodToKitchens < ActiveRecord::Migration[5.2]
  def change
    add_column :kitchens, :neighbourhood, :string
  end
end
