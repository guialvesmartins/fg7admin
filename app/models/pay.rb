class Pay < ApplicationRecord
  belongs_to :provider
  belongs_to :nature
  enum tipo_pagamento: [:Boleto, :Cartao, :Dinheiro, :Transferencia]
  enum status: [:Baixado, :Aberto]
end
