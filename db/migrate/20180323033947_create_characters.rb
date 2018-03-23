class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.text :token
      t.text :refresh_token
      t.text :expires_on
      t.text :scopes
      t.text :name
    end
  end
end
