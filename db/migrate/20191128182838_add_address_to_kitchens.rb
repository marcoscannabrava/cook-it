class AddAddressToKitchens < ActiveRecord::Migration[5.2]
  def change
    add_column :kitchens, :address, :string
  end
end
