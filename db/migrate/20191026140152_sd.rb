class Sd < ActiveRecord::Migration[6.0]
  def change
    drop_table :teams
    create_table :teams do |t|
      t.string :name
      t.belongs_to :city
      t.integer :year
      t.string :sponsor
      t.float :budget

      t.timestamps
    end
  end
end
