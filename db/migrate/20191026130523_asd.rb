class Asd < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :state
      t.integer :year
      t.string :sponsor
      t.float :budget

      t.timestamps
    end
  end
end
