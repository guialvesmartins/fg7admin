class Recieve < ApplicationRecord
  belongs_to :client
  enum forma_pagamento: [:Boleto, :Cartao, :Transferencia]
  enum status: [:Baixado, :Aberto]
end
