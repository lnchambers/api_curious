class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :character_owner_hash

      t.timestamps
    end
  end
end
