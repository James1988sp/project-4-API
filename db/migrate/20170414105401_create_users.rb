class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo
      t.string :nationality
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
