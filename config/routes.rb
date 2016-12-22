Rails.application.routes.draw do
  
  mount Customer::Engine    => '/gestao_cliente',    as: :customer
  mount Internal::Engine    => '/gestao_interna',    as: :internal
  mount Finance::Engine     => '/gestao_financeira', as: :finance
  mount Commercial::Engine  => '/gestao_comercial',  as: :commercial

end
