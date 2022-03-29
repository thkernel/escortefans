class CreatePhotoAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_albums do |t|
      t.string :uid
      t.string :title
      t.string :description
      t.integer :size
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
