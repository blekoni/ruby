class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :state
      t.string :country
      t.string :timezone
      t.string :postcode

      t.timestamps
    end
  end
end
