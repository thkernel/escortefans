class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :uid
      t.string :full_address
      t.string :street
      t.string :state
      t.string :city 
      t.string :country
      t.string :phone_number
      
      t.float  :latitude
      t.float  :longitude
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
