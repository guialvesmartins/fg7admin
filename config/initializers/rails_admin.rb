RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show

    config.model Sale do
      label 'Vendas'
        field  :id , :hidden do
          label 'ID'
        end
        field  :client do
          required true
          label 'Cliente'
        end
        field  :plan do
          required true
          label 'Plano'
        end
        field  :user do
          required true
          label 'Vendedor'
        end
        field  :vencimento_lista do
          required true
          label 'Vencimento da Lista'
        end
        field  :link_lista do
          required true
          label 'Link da Lista'
        end
      end
  
      config.model Client do
        label 'Clientes'
        field  :name do
          required true
          label 'Nome'
        end 
        field  :sobre_nome do
          required true
          label 'Sobrenome'
        end
        field  :telefone do
          label 'Telefone'
        end
        field  :email do 
          label 'E-mail'
        end  
        field  :notas do 
          label 'Notas'
        end 
        field  :status do
          required true
          label 'Status'
        end 
        field  :user, :hidden do
          default_value do
            bindings[:view]._current_user.id
          end
        end
        create do
          field  :name do
            required true
            label 'Nome'
          end 
          field  :sobre_nome do
            required true
            label 'Sobrenome'
          end
          field  :telefone do
            label 'Telefone'
          end
          field  :email do 
            label 'E-mail'
          end  
          field  :notas do 
            label 'Notas'
          end 
          field  :status do
            required true
            label 'Status'
          end 
          field  :user, :hidden do
            default_value do
              bindings[:view]._current_user.id
            end
          end
        end

        edit do
          field  :name do
            required true
            label 'Nome'
          end 
          field  :sobre_nome do
            required true
            label 'Sobrenome'
          end
          field  :telefone do
            label 'Telefone'
          end
          field  :email do 
            label 'E-mail'
          end  
          field  :notas do 
            label 'Notas'
          end 
          field  :status do
            required true
            label 'Status'
          end 
          field  :user, :hidden do
            default_value do
              bindings[:view]._current_user.id
            end
          end
        end

        list do
          field  :name do
            required true
            label 'Nome'
          end 
          field  :sobre_nome do
            required true
            label 'Sobrenome'
          end
          field  :telefone do
            label 'Telefone'
          end
          field  :email do 
            label 'E-mail'
          end  
          field  :notas, :hidden do 
            label 'Notas'
          end 
          field  :status do
            required true
            label 'Status'
          end 
        end
      end
  
    config.model Plan do
      label 'Planos'
        field  :name do
          required true
          label 'Nome Plano'
        end 
        field  :valor do
          required true
          label 'Valor'
        end
        field  :status do
          required true
          label 'Status'
        end
        create do 
          field  :name do
            required true
            label 'Nome Plano'
          end 
          field  :valor do
            required true
            label 'Valor'
          end
          field  :status do
            required true
            label 'Status'
          end
        end

        edit do 
          field  :name do
            required true
            label 'Nome Plano'
          end 
          field  :valor do
            required true
            label 'Valor'
          end
          field  :status do
            required true
            label 'Status'
          end
        end
        list do
          field  :name do
            label 'Nome Plano'
          end 
          field  :valor do
            label 'Valor'
          end
          field  :status do
            label 'Status'
          end
        end    
    end
    config.model Pay do
      label 'Contas a Pagar'
        field  :provider do
          required true
          label 'Fornecedor'
        end 
        field  :nature do
          required true
          label 'Natureza'
        end
        field  :valor do
          required true
          label 'Valor'
        end
        field  :tipo_pagamento do
          required true 
          label 'Forma de Pagamento'
        end  
        field  :data_vencimento do
          required true
          label 'Data de Vencimento'
        end 
        field  :data_pagamento do
          label 'Data Baixa'
        end 

        field  :status do
          label 'Status'
        end 

        create do
          field  :provider do
            required true
            label 'Fornecedor'
          end 
          field  :nature do
            required true
            label 'Natureza'
          end
          field  :valor do
            required true
            label 'Valor'
          end
          field  :tipo_pagamento do
            required true 
            label 'Forma de Pagamento'
          end  
          field  :data_vencimento do
            required true
            label 'Data de Vencimento'
          end 
          field  :data_pagamento do
            label 'Data Baixa'
          end 
  
          field  :status do
            label 'Status'
          end 
        end
        
        edit do
          field  :provider do
            required true
            label 'Fornecedor'
          end 
          field  :nature do
            required true
            label 'Natureza'
          end
          field  :valor do
            required true
            label 'Valor'
          end
          field  :tipo_pagamento do
            required true 
            label 'Forma de Pagamento'
          end  
          field  :data_vencimento do
            required true
            label 'Data de Vencimento'
          end 
          field  :data_pagamento do
            label 'Data Baixa'
          end 
  
          field  :status do
            label 'Status'
          end 
        end
        list do
          field  :provider do
            required true
            label 'Fornecedor'
          end 
          field  :nature do
            required true
            label 'Natureza'
          end
          field  :valor do
            required true
            label 'Valor'
          end
          field  :data_vencimento do
            required true
            label 'Data de Vencimento'
          end 
          field  :data_pagamento do
            label 'Data Baixa'
          end 
          field  :status do
            label 'Status'
          end 
        end 
    end
    config.model Recieve do
      label 'Contas a Receber'
      field  :client do
        required true
        label 'Cliente'
      end 
      field  :nosso_num do
        required true
        label 'Numero Boleto'
      end
      field  :valor do
        required true
        label 'Valor'
      end
      field  :data_vencimento do
        required true
        label 'Data Vencimento'
      end
      field  :data_baixa do
        label 'Data Baixa'
      end
      field  :forma_pagamento do
        label 'Forma de Pagamento'
      end
      field  :status do
        label 'Status'
      end
      create do
        field  :client do
                required true
                label 'Cliente'
              end 
              field  :nosso_num do
                required true
                label 'Numero Boleto'
              end
              field  :valor do
                required true
                label 'Valor'
              end
              field  :data_vencimento do
                required true
                label 'Data Vencimento'
              end
              field  :data_baixa do
                label 'Data Baixa'
              end
              field  :forma_pagamento do
                label 'Forma de Pagamento'
              end
              field  :status do
                label 'Status'
              end
        end
        
        edit do
        field  :client do
                required true
                label 'Cliente'
              end 
              field  :nosso_num do
                required true
                label 'Numero Boleto'
              end
              field  :valor do
                required true
                label 'Valor'
              end
              field  :data_vencimento do
                required true
                label 'Data Vencimento'
              end
              field  :data_baixa do
                label 'Data Baixa'
              end
              field  :forma_pagamento do
                label 'Forma de Pagamento'
              end
              field  :status do
                label 'Status'
              end
        end
        
        list do
        field  :client do
                label 'Cliente'
              end 
              field  :nosso_num do
                label 'Numero Boleto'
              end
              field  :valor do
                label 'Valor'
              end
              field  :data_vencimento do
                label 'Data Vencimento'
              end
              field  :data_baixa do
                label 'Data Baixa'
              end
              field  :status do
                label 'Status'
              end
        end
    end
    config.model Provider do
      label 'Fornecedores '
      field  :name do
        label 'Nome Fornecedor'
      end
      field  :telefone do
        label 'Telefone'
      end
      field  :email do
        label 'E-mail'
      end
      field  :notas do
        label 'Notas'
      end
      field  :status do
        label 'Status'
      end
      field  :tipo do
        label 'Tipo'
      end
      create do
            field  :name do
        required true
              label 'Nome Fornecedor'
            end
            field  :telefone do
        required true
              label 'Telefone'
            end
            field  :email do
              label 'E-mail'
            end
            field  :notas do
              label 'Notas'
            end
            field  :status do
        required true
              label 'Status'
            end
            field  :tipo do
        required true
              label 'Tipo'
            end
      end
      
      edit do
      
      field  :name do
        required true
              label 'Nome Fornecedor'
            end
            field  :telefone do
        required true
              label 'Telefone'
            end
            field  :email do
              label 'E-mail'
            end
            field  :notas do
              label 'Notas'
            end
            field  :status do
        required true
              label 'Status'
            end
            field  :tipo do
        required true
              label 'Tipo'
            end
      
      end
      
      list do
      
      field  :name do
              label 'Nome Fornecedor'
            end
            field  :telefone do
              label 'Telefone'
            end
            field  :status do
              label 'Status'
            end
            field  :tipo do
              label 'Tipo'
            end
      
      end
    end

    config.model Schedule do
      label 'Visitas'
      field  :client do
        label 'Clientes'
      end
      field  :user do
        label 'Usuário'
      end
      field  :data do
        label 'Data Visita'
      end
      field  :nota do
        label 'Anotações'
      end

      list do
        field  :client do
          label 'Clientes'
        end
        field  :user do
          label 'Usuário'
        end
        field  :data do
          label 'Data Visita'
        end
        field  :nota do
          label 'Anotações'
        end
      end
    end
    config.model User do
      label 'Usuários'
    end
    config.model Nature do
      visible false
    end
  end
end
