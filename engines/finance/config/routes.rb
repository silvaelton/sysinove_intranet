Finance::Engine.routes.draw do

  resources :orders,  path: 'contas'
  resources :billets, path: 'boletos'
  resources :billet_banks, path: 'boleto_bancos'

  resources :wallets, path: 'centro_de_custo'
  resources :order_categories, path: 'categoria_contas'


end
