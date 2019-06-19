class CreateLoginData < ActiveRecord::Migration[5.2]
  def change
    create_table :login_data do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
    add_index :login_data, :username, unique: true
  end
end
