class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.integer :failed_login_count
      t.boolean :active
      t.boolean :confirmed

      t.timestamps
    end
    
    add_index :users, :email, unique: true
  end
end
