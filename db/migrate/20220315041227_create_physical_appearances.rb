class CreatePhysicalAppearances < ActiveRecord::Migration[5.2]
  def change
    create_table :physical_appearances do |t|
      t.string :uid
      t.float :height, default: 0.0 
      t.float :weight, default: 0.0 

      t.string :corpulence
      t.string :eye
      t.string :hair
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
