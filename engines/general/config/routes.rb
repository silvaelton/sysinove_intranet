General::Engine.routes.draw do

  root 'dashboard#show'

  resources :accounts, path: 'contas'
  resources :tickets,  path: 'chamados' do 
    resources :ticket_comments, path: 'comentarios'
  end

  resources :users, path: 'usuários'
  
end
