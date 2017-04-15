class CreateJoinTableDronesRaces < ActiveRecord::Migration[5.0]
  def change
    create_join_table :drones, :races do |t|
      # t.index [:drone_id, :race_id]
      # t.index [:race_id, :drone_id]
    end
  end
end
