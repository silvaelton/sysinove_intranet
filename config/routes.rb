Rails.application.routes.draw do

  mount Customer::Engine => '/gestao_cliente', as: :customer
  mount Internal::Engine => '/gestao_interna', as: :internal

end
