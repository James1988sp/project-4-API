class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :location
      t.date :date
      t.float :time

      t.timestamps
    end
  end
end
