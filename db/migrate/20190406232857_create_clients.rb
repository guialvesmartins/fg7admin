class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :sobre_nome
      t.string :telefone
      t.string :email
      t.references :user, foreign_key: true
      t.text :notas
      t.integer :status

      t.timestamps
    end
  end
end
