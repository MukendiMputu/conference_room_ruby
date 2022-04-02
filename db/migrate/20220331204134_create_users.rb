class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :uname, :limit => 25, index: true
      t.string :first_name, :limit => 25
      t.string :last_name, :limit => 50
      t.string :email, :default => '', :null => false
      t.string :password_digest
      t.string :avatar

      t.timestamps
    end
    add_index("users", "first_name")
    add_index(:users, :last_name)
  end
end
