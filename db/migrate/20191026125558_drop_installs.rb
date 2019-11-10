class DropInstalls < ActiveRecord::Migration[6.0]
  def change
    drop_table :teams do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end