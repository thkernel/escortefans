class CreateWorkingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :working_hours do |t|
      t.string :uid
      t.string :working_day
      t.time :start_hour
      t.time :end_hour
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
