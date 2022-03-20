class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :uid
      t.string :first_name 
      t.string :last_name
      t.string :nickname
      t.string :sex
      t.date :birth_date
      t.references :escort_category, foreign_key: true
      t.string :nationality
      t.text :presentation 
      t.string :marital_status 
      t.string :sexual_orientation 
      t.string :occupation 
      t.string :astrology 
      t.string :religion 
      t.string :ethnicity
      t.string :purpose
      t.string :available
      t.string :alcohol
      t.string :smoking
      
      t.references :user, foreign_key: true, null: false, index: {unique: true}
      

      t.timestamps
    end
  end
end
