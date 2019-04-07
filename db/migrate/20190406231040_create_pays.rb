class CreatePays < ActiveRecord::Migration[5.2]
  def change
    create_table :pays do |t|
      t.references :provider, foreign_key: true
      t.references :nature, foreign_key: true
      t.decimal :valor
      t.integer :tipo_pagamento
      t.date :data_vencimento
      t.date :data_pagamento
      t.integer :status

      t.timestamps
    end
  end
end
