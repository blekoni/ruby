class Dd < ActiveRecord::Migration[6.0]
  def change
    drop_table :teams
    drop_table :cities

    create_table :cities do |t|
      t.string :name
      t.string :state
      t.string :country
      t.string :timezone
      t.string :postcode

      t.timestamps
    end

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
