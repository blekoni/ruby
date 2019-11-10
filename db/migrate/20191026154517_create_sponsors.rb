class CreateSponsors < ActiveRecord::Migration[6.0]
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
  end
end
