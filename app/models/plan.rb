class Plan < ApplicationRecord
    enum status: [:Ativo, :Inativo]
end
