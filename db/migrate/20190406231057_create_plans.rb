class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :valor
      t.integer :status

      t.timestamps
    end
  end
end
