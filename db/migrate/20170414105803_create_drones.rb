class CreateDrones < ActiveRecord::Migration[5.0]
  def change
    create_table :drones do |t|
      t.string :name
      t.string :photo
      t.float :weight
      t.string :skills
      t.float :speed
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
