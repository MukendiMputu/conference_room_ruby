class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :name, :limit => 45, index: true
      t.string :code, :limit => 5, index: true
      t.string :address

      t.timestamps
    end
  end
end
