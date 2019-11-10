class Lsd < ActiveRecord::Migration[6.0]
  def change
    drop_table :teams
    drop_table :cities
    drop_table :sponsors
    drop_table :players

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
      t.string :color
      t.integer :year
      t.belongs_to :sponsor
      t.float :budget

      t.timestamps
    end

    create_table :sponsors do |t|
      t.string :name
      t.string :address
      t.integer :payment
      t.string :phone

      t.timestamps
    end

    create_table :players do |t|
      t.string :name
      t.belongs_to :team
      t.string :position
      t.string :nation
      t.datetime :birthday
      t.integer :height
      t.integer :weight
      t.timestamps
    end
  end
end
