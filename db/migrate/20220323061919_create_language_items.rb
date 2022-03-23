class CreateLanguageItems < ActiveRecord::Migration[5.2]
  def change
    create_table :language_items do |t|
      t.string :uid
      t.references :language, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
