class CreateConfigurations < ActiveRecord::Migration[6.1]
  def change
    create_table :configurations do |t|
      t.string :configuration_name

      t.timestamps
    end
  end
end
