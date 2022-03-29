class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :uid
      t.references :photo_album, foreign_key: true
      t.string :caption
      t.text :description
      t.references :user, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
