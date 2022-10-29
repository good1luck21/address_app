class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :prefecture
      t.string :address1
      t.string :address1
      t.integer :planner_id

      t.timestamps
    end
  end
end
