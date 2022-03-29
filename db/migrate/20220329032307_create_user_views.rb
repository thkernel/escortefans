class CreateUserViews < ActiveRecord::Migration[5.2]
  def change
    create_table :user_views do |t|
      t.string :uid
      t.integer :number, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
