class AddPriceToDrones < ActiveRecord::Migration[5.0]
  def change
    add_column :drones, :price, :float
  end
end
