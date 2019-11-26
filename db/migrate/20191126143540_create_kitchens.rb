class CreateKitchens < ActiveRecord::Migration[5.2]
  def change
    create_table :kitchens do |t|
      t.string :city
      t.text :description
      t.integer :price_per_hour
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
