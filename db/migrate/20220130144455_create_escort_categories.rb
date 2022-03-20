class CreateEscortCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :escort_categories do |t|
      t.string :uid
      t.string :name
      t.text :description
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
