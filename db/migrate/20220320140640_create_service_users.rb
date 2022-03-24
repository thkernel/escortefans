class CreateServiceUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :service_users do |t|
      t.string :uid
      #t.references :service, foreign_key: true
      #t.float :price, default: 0.0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
