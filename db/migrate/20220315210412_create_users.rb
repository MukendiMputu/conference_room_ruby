class CreateUsers < ActiveRecord::Migration[6.1]
  def self.change
    create_table :users, if_not_exists: true do |t|
      t.string :uname, :limit => 25
      t.string :first_name, :limit => 25
      t.string :last_name, :limit => 50
      t.string :email, :default => '', :null => false
      t.string :password_digest
      t.string :avatar

      t.timestamps
    end
    add_index("users", %w[uname first_name last_name email])
  end
end