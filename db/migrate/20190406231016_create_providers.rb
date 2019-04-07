class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :telefone
      t.string :email
      t.text :notas
      t.integer :status
      t.integer :tipo

      t.timestamps
    end
  end
end
