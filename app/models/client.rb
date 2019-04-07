class Client < ApplicationRecord
  belongs_to :user
  enum status: [:Ativo, :Inativo]
end
