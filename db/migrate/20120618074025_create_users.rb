class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email
      t.integer :role

      t.timestamps
    end

    add_index :users, :user_name
  end
end
