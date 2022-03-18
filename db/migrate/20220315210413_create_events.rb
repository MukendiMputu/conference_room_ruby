class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events, if_not_exists: true  do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
