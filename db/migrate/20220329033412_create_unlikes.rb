class CreateUnlikes < ActiveRecord::Migration[5.2]
  def change
    create_table :unlikes do |t|
      t.string :uid
      t.references :unliker, index: true
      t.references :unliked, index: true
      t.datetime :removed_at

      t.timestamps
    end
  end
end
