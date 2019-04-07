class Provider < ApplicationRecord
    enum tipo: [:Lista, :TVbox, :TI , :Divulgação]
    enum status: [:Ativo, :Inativo]
end
