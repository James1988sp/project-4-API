class AddUserToRace < ActiveRecord::Migration[5.0]
  def change
    add_reference :races, :user, foreign_key: true
  end
end
