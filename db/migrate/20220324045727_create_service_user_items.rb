class CreateServiceUserItems < ActiveRecord::Migration[5.2]
  def change
    create_table :service_user_items do |t|
      t.string :uid
      t.references :service_user, foreign_key: true
      t.references :service, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
