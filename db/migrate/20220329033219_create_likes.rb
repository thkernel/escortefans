class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :uid
      t.references :liker, index: true
      t.references :liked, index: true
      t.datetime :removed_at

      t.timestamps
    end
  end
end
