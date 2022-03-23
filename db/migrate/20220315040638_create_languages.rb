class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :uid
      #t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
