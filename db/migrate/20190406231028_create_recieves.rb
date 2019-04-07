class CreateRecieves < ActiveRecord::Migration[5.2]
  def change
    create_table :recieves do |t|
      t.references :client, foreign_key: true
      t.integer :nosso_num
      t.decimal :valor
      t.date :data_vencimento
      t.date :data_baixa
      t.integer :forma_pagamento
      t.integer :status

      t.timestamps
    end
  end
end
