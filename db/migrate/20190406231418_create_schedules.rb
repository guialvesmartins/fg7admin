class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.references :client, foreign_key: true
      t.references :user, foreign_key: true
      t.date :data
      t.text :nota

      t.timestamps
    end
  end
end
